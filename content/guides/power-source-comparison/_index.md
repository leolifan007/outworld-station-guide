﻿---
title: "Power Source Comparison - Solar vs Fusion vs Antimatter vs Hybrid"
description: "Complete comparison of every power source in Outworld Station v1.1: Solar, Fusion, Antimatter, and hybrid configurations. Power output, build cost, fuel chain, and when each source makes sense."
date: 2026-07-14
lastmod: 2026-07-14T16:10:00+08:00
draft: false
publishDate: 2026-07-24T14:30:00+08:00
version: "1.1"
game_version: "v1.1.0"
category: reference
breadcrumb: Power Source Comparison
tested: "All power configs tested on v1.1.1.0 with production loads from Level 5 through Level 20."
---

{{< diagram src="power-source-comparison-chart.svg" caption="Power source comparison chart showing Solar, Fusion, and Antimatter power output over a full day-night cycle. Fusion provides baseline, Solar covers daytime peaks, and Antimatter handles periodic load spikes." >}}

## Which Power Source Should You Build?

Outworld Station has three main power sources and one hybrid configuration. Each has a specific level range where it performs best. Building Fusion at Level 3 wastes resources. Sticking with Solar at Level 10 starves your production. Here is the exact upgrade path.

For grid design and load balancing details, see [Multi-Source Power Grid Stability Guide](/guides/multi-source-power-grid-stability/).

{{< callout type="verdict" title="The Short Version" >}}
Levels 1-6: Solar panels + batteries (32 MW peak). Levels 7-11: Transition to Fusion reactor (80 MW constant). Levels 12+: Add Antimatter (200+ MW burst). Best config by Level 15: 5 panels + 2 batteries + 1 Fusion + 1 Antimatter cell buffer = 250+ MW hybrid that handles all load patterns without brownouts.
{{< /callout >}}


## Power Source Comparison Table

| Source | Level | Cost | Output | Fuel | Pros | Cons |
|--------|-------|------|--------|------|------|------|
| Solar Panel | 1 | 15 Steel + 5 Electronics | 8 MW (day) / 0 (night) | None | Free, no fuel | Intermittent |
| Battery | 2 | 20 Steel + 10 Copper | Stores 40 MW | None | Charge/discharge | Limited capacity |
| Small Generator | 3 | 10 Steel + 5 Coal/min | 5 MW constant | Coal | Cheap early power | Burns coal fast |
| Fusion Reactor | 7 | 200 Steel + 80 Electronics + 30 Superalloy | 80 MW constant | H + He (5/min) | High constant output | Expensive, needs gas |
| Antimatter Cell | 11 | 120 Superalloy + 60 Electronics | 200 MW burst | Antimatter (2/cell) | Massive burst output | Expensive fuel |

{{< callout type="info" title="Quick Tip" >}}
**Key metric: Power per Steel.** Solar gives 0.53 MW per Steel (8 MW / 15 Steel). Fusion gives 0.40 MW per Steel (80 / 200). But Fusion runs 24/7. Solar needs battery backup which adds cost. Total system cost for 80 MW: Solar = ~15 panels + 4 batteries = 225 Steel + 115 Electronics. Fusion = 1 reactor + fuel supply = 200 Steel + 80 Electronics. Fusion wins on electronics cost and consistency.
{{< /callout >}}


## Phase 1: Solar + Battery (Levels 1-6)

Your only option before Fusion. The standard build:

| Build Stage | Panels | Batteries | Peak MW | Iron Cost | Copper Cost |
|-------------|--------|-----------|---------|-----------|-------------|
| Starter (Level 1-2) | 2 | 1 | 16 MW | 30 | 10 |
| Minimum viable (Lv3-4) | 4 | 2 | 32 MW | 60 | 30 |
| Full build (Lv5-6) | 6 | 3 | 48 MW | 90 | 50 |

**Solar panel placement tip:** Place panels on the top surface of your station facing the sun. The sun rotates relative to your station every 30 seconds (one day cycle = 30s day + 15s night). If you build on the shaded side, panels get only partial coverage.

**Battery management:** Each battery stores 40 MW. Two batteries = 80 MW storage capacity. The night cycle is 15 seconds. If your draw is 32 MW, that is 480 MW consumed during night. You need 12 batteries to survive the night at full draw. Actually, you need less: not all buildings run at night. Mining drills and smelters can idle during night without losing progress. Only power essential, continuous-flow buildings with battery.

For power grid zoning, see [Power Grid Zoning Guide](/guides/power-grid-zoning-circuit-guide/).


## Phase 2: Fusion (Levels 7-11)

| Requirement | Detail |
|-------------|--------|
| Research cost | 3,500 Tech Points |
| Build cost | 200 Steel + 80 Electronics + 30 Superalloy |
| Fuel consumption | 3 Hydrogen + 2 Helium per minute |
| Output | 80 MW constant, 24/7 |
| Space required | 4x4 tiles (large) |

The Fusion reactor is the biggest build in the game by cost. But it transforms your power situation. One Fusion reactor replaces 10 solar panels and 3 batteries. More importantly, it provides constant power →?no production fluctuations during night cycles.

**Fuel chain setup:**
1. Build a Gas Extractor on a nearby Gas Giant (nearest is usually 1-2 sectors away)
2. Pair gas output to storage containers
3. Route Hydrogen to one line, Helium to another
4. Connect both to the Fusion reactor input

If gas extraction is not set up yet, see our [Deep Space Gas Giant Mining Guide](/guides/deep-space-gas-giant-mining/).

{{< resourcegrid ingredient="Power System" input="Build Cost" output="Sustained MW" ratio="Best Level Range" >}}
  {{< row item="Solar x6 + Bat x3" input="90 Steel + 30 Cu" output="48 MW peak" ratio="Levels 1-6" >}}
  {{< row item="Fusion Reactor" input="200 Steel + 80 El + 30 SA" output="80 MW const" ratio="Levels 7-11" >}}
  {{< row item="Solar x5 + Bat x2 + Fusion + Antimatter" input="255 Steel + 165 El + 30 SA" output="250+ MW hybrid" ratio="Levels 12+" >}}
{{< /resourcegrid >}}


## Phase 3: Antimatter (Levels 11+)

| Requirement | Detail |
|-------------|--------|
| Research cost | 5,000 Tech Points |
| Antimatter Cell cost | 120 Superalloy + 60 Electronics (reusable) |
| Output per cell | 200 MW burst (last ~20 seconds) |
| Fuel regeneration | 1 cell recharges every 3 minutes |

The Antimatter Cell is not a primary power source. It is a power bank that delivers 200 MW instantly. Use it for:

- Starting big research projects (some research needs +50 MW power)
- Burst production (crafting large batches)
- Covering Fusion maintenance windows

For antimatter production chain, see [Antimatter Power Guide](/guides/antimatter-power-guide/).


## Phase 4: Hybrid Build (Levels 12+, Recommended)

My final power configuration at Level 18:

| Component | Count | MW Contribution |
|-----------|-------|----------------|
| Solar Panel | 5 | 40 MW (day) |
| Battery | 2 | 80 MW storage |
| Fusion Reactor | 1 | 80 MW constant |
| Antimatter Cell | 1 | 200 MW (burst) |

**Hybrid priority logic:**
1. Fusion covers all base load (80 MW)
2. Solar + battery handles daytime peaks (up to 120 MW combined)
3. Antimatter fires only for crafting surges
4. Battery smooths the Fusion refuel dip

Total available: 80 MW constant + 40 MW peak = 120 MW sustained, with 200 MW bursts. This powers 6 Smelters, 4 Assemblers, 2 Chemical Processors, the Research Lab, and the Exo-Planet Ops Centre simultaneously →?enough for any mid-to-late-game production line.

{{< callout type="info" title="Testing Methodology" >}}
Power output measured over 30-minute real-time runs on v1.1.1.0. Load simulations used actual production lines (Smelters + Assemblers + Chemical Processors + Drone Fleet). Fuel costs calculated at market prices from 3 different sector stations.
{{< /callout >}}
