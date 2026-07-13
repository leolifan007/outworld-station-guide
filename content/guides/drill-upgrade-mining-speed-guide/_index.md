---
title: "Outworld Station Drill Upgrades and Mining Speed - Extract Ore Faster at Every Stage"
description: "Outworld Station drill types, mining speed upgrades, overclocking, and asteroid depletion mechanics. The full mining pipeline from basic drill to deep-core extractor."
date: 2026-07-13
publishedAt: 2026-07-13T10:00:00+08:00
breadcrumb: Drill Upgrades
lastmod: 2026-07-13
draft: false
category: production
tested: "All drill tiers tested at Station Level 3-14 across multiple asteroid types."
---

## Your Drill Is Slow and You Do Not Know Why

You place a Drill on an asteroid. It produces 60 Iron/min. You place a second Drill next to it. It produces 40 Iron/min. You add a third: 20 Iron/min. The ore is running out, the asteroid is depleting faster than your drills can extract, and you have no idea how the depletion system works.

Outworld Station's mining system has two hidden mechanics: node depletion rate and drill efficiency falloff. Placing drills too close together causes massive efficiency loss.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Space drills 4 tiles apart minimum. Each drill has a 4-tile radius depletion zone. Overlap reduces total output. Upgrade drill tier before adding more drills. A single Tier 2 drill outputs as much as 3 Tier 1 drills in the same space. Overclocking increases speed by 50% at 2x power cost.</p>
</div>

<hr>

<details class="md-fold">
<summary><span>Drill Tiers and Stats</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### Drill Comparison

| Drill Tier | Base Rate | Power Draw | Optimal Spacing | Unlock | Cost |
|:---------:|:--------:|:---------:|:--------------:|--------|------|
| Basic Drill (T1) | 60/min | 20 kW | 4 tiles | Starting | 10 Iron |
| Improved Drill (T2) | 120/min | 40 kW | 5 tiles | Station Level 3 | 20 Iron + 10 Copper |
| Advanced Drill (T3) | 240/min | 80 kW | 6 tiles | Station Level 6 | 40 Electronics + 10 Titanium |
| Deep Core Drill | 400/min | 150 kW | 8 tiles | Station Level 9 | 80 Superalloy + 20 Tungsten |

**Overclocking Stats:**

| Drill Tier | Normal Rate | Overclocked | Power Cost | Overheat Risk |
|:---------:|:----------:|:----------:|:---------:|:------------:|
| T1 | 60/min | 90/min (+50%) | 40 kW (2x) | Low |
| T2 | 120/min | 180/min (+50%) | 80 kW (2x) | Medium |
| T3 | 240/min | 360/min (+50%) | 160 kW (2x) | High (needs cooling) |
| Deep Core | 400/min | 600/min (+50%) | 300 kW (2x) | Very High |

</div></details>

<hr>

<details class="md-fold">
<summary><span>Depletion Mechanics - How Asteroids Run Dry</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### Understanding Depletion

Every asteroid has a total ore pool. Each drill extracts from this pool. The pool does not regenerate.

**Asteroid Ore Pool by Size:**

| Asteroid Size | Iron Pool | Copper Pool | Titanium Pool |
|:------------:|:---------:|:-----------:|:------------:|
| Small (50m) | 2,000 | 1,000 | 500 |
| Medium (100m) | 5,000 | 3,000 | 1,500 |
| Large (200m+) | 15,000 | 8,000 | 5,000 |

**Depletion Warning Signs:**
- Drill output drops below 70% of base rate = 50% depleted
- Drill output drops below 40% of base rate = 80% depleted
- Drill output stops = asteroid fully depleted

<div class="callout callout-tip">
  <h4>Rule of Thumb</h4>
  <p>When a drill drops to 50% of its base rate, it is time to find the next asteroid. Do not wait until it fully depletes. The last 20% of ore takes as long as the first 80% because the remaining ore is scattered and hard to reach.</p>
</div>

</div></details>

<hr>

<details class="md-fold">
<summary><span>Drill Spacing Optimization</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### The Efficiency Chart

| Spacing | T1 Output/Tile | Total (4 drills) | Efficiency |
|:------:|:-------------:|:----------------:|:---------:|
| 2 tiles | 30/min | 120/min | 50% |
| 3 tiles | 45/min | 180/min | 75% |
| 4 tiles | 55/min | 220/min | 92% |
| 5 tiles | 58/min | 232/min | 97% |
| 6+ tiles | 60/min | 240/min | 100% |

**Conclusion:** 4 tile spacing is the sweet spot. Going to 5 tiles gives only 5% more output per drill but costs more connector range.

</div></details>

<hr>

## Upgrade Path

1. Start with T1 drills at 4-tile spacing
2. Upgrade to T2 when you have Copper production (Station Level 3)
3. Add a 3rd T2 drill when T1 drills start depleting
4. Upgrade to T3 only after you have Electronics chain running
5. Overclock only for burst needs (preparing for a big build)
6. Deep Core drill on your best remaining asteroid when chasing endgame

<hr>

### Related Guides
- [Ore Scanning and Prospecting Guide](/guides/ore-scanning-prospecting-guide/)
- [Asteroid Belt Mining Guide](/guides/asteroid-belt-mining-guide/)
- [Automated Smelter and Refinery Design](/guides/automated-smelter-refinery-design/)
