---
title: "Quantum Rift Extractor Guide -- Safe Harvesting in v1.1.1.0"
description: "v1.1.1.0 removed radiation from extractors built on quantum rifts. Here is how to build safe rift harvesters, what they produce, and why this unlocks a new resource tier."
date: 2026-08-19
lastmod: 2026-08-19T10:45:00+08:00
draft: false
hidden: true
publishDate: 2026-08-20T09:00:00+08:00
version: "1.1.1.0"
game_version: "v1.1.1.0"
category: exploration
breadcrumb: Quantum Rift Extractor Guide
tested: "Rift extractor placement and output verified on a v1.1.1.0 save with two active rifts."
---

{{< diagram src="quantum-rift-extractor.svg" caption="Quantum rift extraction: place, power, protect, and collect -- no containment needed in v1.1.1.0" >}}

## The Rift That Used to Burn You

Quantum rifts are one of Outworld Station's most valuable resources -- and before v1.1.1.0, they were also one of the most annoying. Placing an extractor on a rift caused **radiation**, which meant containment walls, constant monitoring, and a whole defensive side-project just to harvest one resource node.

The July 22 patch changed the core rule: **extractors on quantum rifts no longer produce radiation.** This is one of the nine new features in v1.1.1.0, and it quietly unlocks a cleaner, simpler way to harvest the game's rarest materials.

{{< callout type="verdict" title="The Short Version" >}}
As of v1.1.1.0, you can place extractors on quantum rifts with zero radiation. Build directly on the rift, power the extractor, protect it from hostiles, and collect the output. The containment/radiation minigame is gone. This makes rift harvesting viable much earlier in the game -- no radiation research or containment tech required.
{{< /callout >}}

## What Changed in v1.1.1.0

| Aspect | Before v1.1.1.0 | v1.1.1.0 |
|--------|-----------------|----------|
| Radiation from rift extractors | Yes | **None** |
| Containment walls needed | Yes | No |
| Radiation research required | Yes | No |
| Rift output | Unchanged | Unchanged |

The fix is listed among the 17 bug fixes in the patch notes ("radioactive objects no longer radiate" + extractor-specific behavior). The practical effect: rift harvesting is now a **normal mining operation**, not a hazmat operation.

## How to Build a Rift Harvester

### Step 1: Find a Rift

Rifts spawn at fixed locations in the world (scan with your exploration ships; see [Ore Scanning & Prospecting Guide](/guides/ore-scanning-prospecting-guide/) for scanning technique). The v1.1.1.0 void-spawn fix also means rift/marker positions are accurate now.

### Step 2: Place the Extractor

- Place the extractor **directly on the rift node**.
- Confirm the placement highlight shows the rift as a valid resource.
- No containment walls, no radiation shielding, no hazmat buildings.

### Step 3: Power It

Rift extractors draw real power. Follow the [Cross-Planet Power Limits Guide](/guides/cross-planet-power-limits/) if the rift is off-planet: local generation or shipped fuel, plus a fallback bank.

### Step 4: Protect It

The rift extractor is a building like any other -- hostiles will attack it. The [Remote Outpost Defense Guide](/guides/remote-outpost-defense-guide/) applies fully. A couple of turrets and a repair station ([Automated Repair Station Guide](/guides/automated-repair-station-healing/)) keep it alive unattended.

### Step 5: Collect the Output

- Route output to a buffer ([Buffer Storage Strategy](/guides/buffer-storage-strategy/)).
- Use the v1.1.1.0 **exclusion filters** ([guide](/guides/item-exclusion-filters/)) at the collection point so only rift products enter.
- Ship it home via freighter, and monitor in the new [Freighter Overview](/guides/freighter-overview-monitoring/).

## What Rift Output Is Good For

Rift materials feed the exotic/matter tier of recipes -- the same tier that the new v1.1.1.0 alternates touch ([De-Energized Matter](/guides/de-energized-matter-guide/) and [Carbon Nano-Conductors](/guides/carbon-nano-conductor-guide/)). A safe rift harvester plus the new alternates forms a complete exotic-tier supply chain:

```
Rift extractor → exotic material → Matter Printer / advanced recipes
                              └→ De-Energized buffer (for bursts)
Carbon line → Carbon Nano-Conductors → circuits (bulk)
```

## The Earlier-Game Viability Shift

The most interesting consequence of this change is **timing**. Before v1.1.1.0, rift harvesting was locked behind radiation research and containment tech. Now:

- A player who finds a rift in the early-mid game can harvest it immediately.
- The exotic materials arrive earlier, which accelerates the Matter tree and the [Relic & Artifact System](/guides/relic-artifact-system-guide/).
- Your research order changes: you can deprioritize radiation/containment nodes. See [Research Order Guide](/guides/research-order/) for the updated sequence.

{{< callout type="warning" title="One Caveat" >}}
The "no radiation" behavior is confirmed on v1.1.1.0, but the v1.1.1.0 patch notes also include a fix for "radioactive objects no longer radiate after reload." If you built a rift extractor *before* updating, deconstruct and rebuild it once so the game applies the new non-radiating state cleanly.
{{< /callout >}}

{{< callout type="verdict" title="Bottom Line" >}}
v1.1.1.0 turned quantum rifts from a radiation headache into a straightforward resource node. Place the extractor, power it, protect it, collect -- that is the whole loop now. If you skipped rifts because of containment, go back: the exotic-tier materials they produce, combined with the new v1.1.1.0 alternate recipes, are the fastest path to late-game production.
{{< /callout >}}
