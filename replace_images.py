import re

base = r'C:\Users\ROG\.qclaw\workspace-agent-d2068023\projects\outworld-station-guide\content'

replacements = {
    'station-core': 'beginner-hero',
    'solar-panel': 'solar-panel',
    'inventory-pair': 'inventory-pair',
    'smelter-line': 'smelter-line',
    'no-conveyor': 'no-conveyor',
    'power-buildings': 'power-evolution',
    'fusion-reactor': 'fusion-reactor',
    'chemical-plant': 'chemical-plant',
    'wormhole-gen': 'wormhole-gen',
    'shield-gen': 'shield-gen',
    'iron-mining': 'mining-drills',
    'processing-chain': 'processing-chain',
    'circuit-board': 'circuit-board',
    'alien-relic': 'alien-relic',
}

files = [
    base + r'\beginner\_index.md',
    base + r'\automation-guide\_index.md',
    base + r'\building-tutorial\_index.md',
    base + r'\resources\_index.md',
]

total_replaced = 0
for fpath in files:
    with open(fpath, 'r', encoding='utf-8') as f:
        content = f.read()

    def make_replacer(seed_map):
        cnt = [0]
        def replacer(m):
            seed = m.group(1)
            if seed in seed_map:
                cnt[0] += 1
                return f'/outworld-station-guide/images/{seed_map[seed]}.webp'
            return m.group(0)
        return replacer, cnt

    replacer, cnt_ref = make_replacer(replacements)
    new_content = re.sub(r'https://picsum\.photos/seed/([^/]+)/(\d+)/(\d+)', replacer, content)
    count = cnt_ref[0]

    if count > 0:
        total_replaced += count
        with open(fpath, 'w', encoding='utf-8') as f:
            f.write(new_content)
        print(f'{fpath}: replaced {count} images')

print(f'\nTotal: {total_replaced} images replaced')
