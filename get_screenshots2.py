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

# Print raw to see
for line in json_part.split(','):
    if 'full' in line:
        print(line.strip())
        print()
