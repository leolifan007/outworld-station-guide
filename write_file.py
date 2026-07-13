#!/usr/bin/env python3
"""write_file.py — Write a file with strict UTF-8 without BOM encoding.
Per SOP: all .md files must be written through this script.
Usage: python3 write_file.py <filepath> [<content-or-dash-dash>]
If content is '--', read from stdin.
"""
import sys, os

def write_file(path, content):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w", encoding="utf-8") as f:
        f.write(content)

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: write_file.py <path> <content> | cat content | write_file.py <path> --", file=sys.stderr)
        sys.exit(1)
    path = sys.argv[1]
    content = sys.argv[2]
    if content == "--":
        content = sys.stdin.read()
    write_file(path, content)
    print(f"Written: {path} ({len(content)} bytes)", file=sys.stderr)
