#!/usr/bin/env python3
"""auto-publish.py — Outworld Station Guide auto-publish script.

Scans content/ for articles with hidden: true and publishDate <= now.
Removes hidden and publishDate fields, commits with random timestamp.
"""

import os
import re
import random
import hashlib
from datetime import datetime, timezone, timedelta

REPO_ROOT = os.getenv("GITHUB_WORKSPACE", os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
CONTENT_DIR = os.path.join(REPO_ROOT, "content", "guides")
TZ_CST = timezone(timedelta(hours=8))


def find_due_articles():
    """Find all _index.md files with hidden: true and publishDate <= now."""
    due = []
    for root, dirs, files in os.walk(CONTENT_DIR):
        if "_index.md" not in files:
            continue
        fpath = os.path.join(root, "_index.md")
        with open(fpath, "r", encoding="utf-8", errors="surrogateescape") as f:
            raw = f.read()

        parts = raw.split("---", 2)
        if len(parts) < 3:
            continue
        fm = parts[1]

        if not re.search(r"hidden\s*:\s*true", fm, re.IGNORECASE):
            continue

        m = re.search(r"publishDate\s*:\s*(.+)", fm)
        if not m:
            continue

        pub_str = m.group(1).strip().strip('"').strip("'")
        try:
            pub_date = datetime.fromisoformat(pub_str)
        except ValueError:
            continue

        now = datetime.now(timezone.utc)
        if pub_date.tzinfo is None:
            pub_date = pub_date.replace(tzinfo=timezone.utc)

        if pub_date <= now:
            due.append(fpath)
            print(f"  [DUE] {os.path.relpath(fpath, REPO_ROOT)} (publishDate: {pub_str})")

    return due


def publish_article(fpath):
    """Remove hidden: true and publishDate from front matter. Update lastmod."""
    with open(fpath, "r", encoding="utf-8") as f:
        raw = f.read()

    parts = raw.split("---", 2)
    if len(parts) < 3:
        return False

    fm = parts[1]

    # Remove hidden field
    fm = re.sub(r"\n\s*hidden\s*:\s*(true|false)\s*", "", fm, flags=re.IGNORECASE)
    # Remove publishDate line
    fm = re.sub(r"\n\s*publishDate\s*:.*", "", fm)

    # Set lastmod to random non-round time (CST)
    now = datetime.now(TZ_CST)
    rand_min = random.randint(0, 59)
    rand_sec = random.randint(0, 59)
    lastmod = now.replace(minute=rand_min, second=rand_sec, microsecond=0)
    lastmod_str = lastmod.strftime("%Y-%m-%dT%H:%M:%S+08:00")

    if re.search(r"\n\s*lastmod\s*:", fm):
        fm = re.sub(r"\n\s*lastmod\s*:.*", f"\nlastmod: {lastmod_str}", fm)
    else:
        fm += f"\nlastmod: {lastmod_str}"

    new_raw = f"---{fm}\n---{parts[2]}"
    with open(fpath, "w", encoding="utf-8") as f:
        f.write(new_raw)

    rel = os.path.relpath(fpath, REPO_ROOT)
    print(f"  [PUBLISH] {rel} @ {lastmod_str}")
    return True


def main():
    print(f"[auto-publish] Checking for due articles...")
    print(f"  Time now (CST): {datetime.now(TZ_CST).strftime('%Y-%m-%d %H:%M:%S')}")
    print(f"  Content dir: {CONTENT_DIR}")

    due = find_due_articles()
    count = len(due)
    print(f"  Due articles: {count}")

    if count == 0:
        print("[auto-publish] Nothing to publish. Exiting.")
        return

    # Random publish decision per run to scatter publish times
    # Seed: hour + day so same hour always same decision
    hour_seed = int(hashlib.md5(
        datetime.now(TZ_CST).strftime("%Y-%m-%d-%H").encode()
    ).hexdigest(), 16) % 100

    threshold = 60 if count >= 2 else 30
    force = os.environ.get("FORCE_PUBLISH", "").lower() == "true"

    if hour_seed < threshold or force:
        print(f"[auto-publish] Publishing {count} article(s)...")
        published = []
        for fpath in due:
            if publish_article(fpath):
                slug = os.path.basename(os.path.dirname(fpath))
                published.append(slug)

        if published:
            now = datetime.now(TZ_CST)
            rand_offset = timedelta(
                hours=random.randint(0, 2),
                minutes=random.randint(0, 59),
                seconds=random.randint(0, 59)
            )
            commit_time = now - rand_offset
            commit_ts = commit_time.strftime("%Y-%m-%dT%H:%M:%S+08:00")
            msg = f"Auto-publish: {', '.join(published)}"
            print(f"  Commit: {msg}")
            print(f"  Timestamp: {commit_ts}")

            os.chdir(REPO_ROOT)
            os.system(f'git add content/')
            os.system(f'git commit --no-verify -m "{msg}" --date="{commit_ts}"')
            os.system(f'git push origin content-polishing --no-verify')
            print("[auto-publish] Done.")
    else:
        print(f"[auto-publish] Skipped (seed={hour_seed}, threshold={threshold})")


if __name__ == "__main__":
    main()
