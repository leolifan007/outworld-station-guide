import urllib.request, re, os

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

# Extract full URLs and fix escaped slashes
full_urls = re.findall(r'"full":"([^"]+)"', json_part)
full_urls = [u.replace('\/', '/') for u in full_urls]

print(f'Found {len(full_urls)} screenshots')

for i, u in enumerate(full_urls):
    thumb_url = u.replace('.1920x1080.', '.600x338.')
    out_path = os.path.join(imgDir, f'ss_{i}_thumb.jpg')
    try:
        req2 = urllib.request.Request(thumb_url, headers={'User-Agent': 'Mozilla/5.0'})
        resp2 = urllib.request.urlopen(req2, timeout=10)
        with open(out_path, 'wb') as f:
            f.write(resp2.read())
        size = os.path.getsize(out_path)
        print(f'  [{i}] OK ({size//1024}KB)')
    except Exception as e:
        print(f'  [{i}] FAIL: {e}')

print(f'\nThumbnails saved.')
