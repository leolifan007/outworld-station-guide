import urllib.request, re, os, sys

imgDir = r'C:\Users\ROG\.qclaw\workspace-agent-d2068023\projects\outworld-station-guide\themes\outworld-theme\static\images'

url = 'https://store.steampowered.com/app/3242950/Outworld_Station/'
req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
resp = urllib.request.urlopen(req, timeout=15)
html = resp.read().decode('utf-8', errors='replace')

# Find screenshots JSON
idx = html.index('screenshots')
idx2 = html.index('[{', idx)
idx3 = html.index('}]', idx2) + 2
json_part = html[idx2:idx3].replace('&quot;', '"')

# Extract all full URLs
urls = re.findall(r'"full":"([^"]+)"', json_part)
print(f'Found {len(urls)} screenshots\n')

# Download all thumbnails (600x338) to inspect
for i, u in enumerate(urls):
    thumb_url = u.replace('.1920x1080.', '.600x338.')
    out_path = os.path.join(imgDir, f'ss_{i}_thumb.jpg')
    try:
        req2 = urllib.request.Request(thumb_url, headers={'User-Agent': 'Mozilla/5.0'})
        resp2 = urllib.request.urlopen(req2, timeout=10)
        with open(out_path, 'wb') as f:
            f.write(resp2.read())
        size = os.path.getsize(out_path)
        print(f'  [{i}] Downloaded thumbnail ({size//1024}KB)')
    except Exception as e:
        print(f'  [{i}] FAILED: {e}')

print(f'\nDone! Thumbnails saved to {imgDir}')
