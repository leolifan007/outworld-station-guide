---
title: "Late-Game Logistics Balance Guide -- Surviving the 540 Output Cap"
description: "The 540 items/min logistics cap is the #1 late-game complaint on Steam, and v1.1.1.0 did not fix it. Here is how to redesign around it: split lines, dedicated pipes, and tiered routing."
date: 2026-08-19
lastmod: 2026-08-19T10:30:00+08:00
draft: false
hidden: true
publishDate: 2026-08-20T09:00:00+08:00
version: "1.1.1.0"
game_version: "v1.1.1.0"
category: logistics
breadcrumb: Late-Game Logistics Balance
tested: "Workarounds verified on a v1.1.1.0 save past station level 11 with a 540-capped logistics core."
---

{{< diagram src="logistics-540-balance.svg" caption="The 540 cap: one belt per machine class, split lanes, and tiered routing that survives late game" >}}

## The Wall Every Late-Game Player Hits

If you have reached station level 11+ and watched your factory grind to a halt, you have met the **540 items/min logistics cap**. It is the single most-cited complaint in Outworld Station reviews -- and yes, **v1.1.1.0 did not fix it**.

The good news: the cap is survivable. You just cannot build the way you did in the early game. This guide is the practical redesign playbook.

{{< callout type="verdict" title="The Short Version" >}}
The 540 cap means one logistics channel (belt/pipe/connector) tops out at 540 items/min. You beat it by **parallelism, not speed**: split one 540-demand machine group across multiple dedicated channels, give every high-throughput machine its own belt, and use tiered routing so low-volume items never compete with high-volume ones. The cap is a design constraint, not a bug -- and it is deliberately still present in v1.1.1.0.
{{< /callout >}}

## Understanding the Cap

| Fact | Detail |
|------|--------|
| Hard limit | ~540 items/min per logistics channel |
| What it applies to | Belts, pipes, connector throughput |
| When it bites | Station level 11+, dense factory cores |
| Fixed in v1.1.1.0? | **No** |

The cap bites hardest when one machine or one line *wants* more than 540/min. The game does not queue overflow -- it just starves the consumer.

## The Three Workarounds

### 1. One Belt Per Machine Class (The Simple Fix)

The moment a machine class wants more than 540/min, **stop merging its output onto a shared belt**.

**Wrong:**
```
Smelter 1 ─┐
Smelter 2 ─┼─► shared belt (540 cap) ─► starving
Smelter 3 ─┘
```

**Right:**
```
Smelter 1 ─► belt A ─► consumer
Smelter 2 ─► belt B ─► consumer
Smelter 3 ─► belt C ─► consumer
```

Each belt stays under the cap and the total throughput scales. This is the "one belt per machine" rule from the [Conveyor Balancing Guide](/guides/conveyor-balancing-guide/), applied ruthlessly.

### 2. Dedicated Pipes for Fluids & Gas

Gas and fluid lines hit the same cap. The [Pipe Bottleneck Guide](/guides/pipe-bottleneck-guide/) and [Liquid Gas Pipe Network Design](/guides/liquid-gas-pipe-network-design/) cover the mechanics; the late-game rule is simpler:

- **One gas type per pipe.** Never mix Nitrox and Hydrogen on the same trunk.
- **Parallel pipes for high-demand consumers.** A smelter block wanting 800/min of gas gets two pipes, not one.
- **Buffer at the machine, not the trunk.** Small buffers at each consumer smooth bursts without overloading the trunk.

### 3. Tiered Routing (The Pro Solution)

Categorize every item by volume and route accordingly:

| Tier | Volume | Routing |
|------|--------|---------|
| High | >540/min demand | Dedicated direct belt, machine-to-machine |
| Medium | 200-540/min | Shared belt with strict balancing |
| Low | <200/min | Shared bus, any convenient path |

Build a **tier map** of your factory: which items are high-volume, which are medium, which are low. Then route each tier differently. High-volume items never touch the shared bus. This is the late-game evolution of the [Assembly Line Ratios](/guides/assembly-line-ratios/) approach.

{{< callout type="tip" title="Pro Tip" >}}
The v1.1.1.0 **per-minute rate presets** (new in this patch) make tiered routing easier: set each machine's efficiency by items/min instead of percentage. When a machine needs exactly 540/min on its dedicated belt, set it to 540 and stop guessing.
{{< /callout >}}

## The Complete Late-Game Pattern

For a station core at level 11+:

1. **Map your top 5 high-volume items** (usually plates, circuits, gas, alloy, and one exotic).
2. **Give each a dedicated direct channel** from producer to consumer.
3. **Route everything else on a tiered shared bus** with strict filters (see [Item Exclusion Filters](/guides/item-exclusion-filters/)).
4. **Use the freighter overview** ([guide](/guides/freighter-overview-monitoring/)) to verify nothing is starving.
5. **Let buffers absorb spikes** ([Buffer Storage Strategy](/guides/buffer-storage-strategy/)) instead of expecting belts to.

## What NOT To Do

- **Do not** rebuild the whole factory at once. Fix one high-volume line, verify, move on.
- **Do not** assume MK3 belts bypass the cap. They do not -- the 540 cap applies regardless of belt tier (see [MK2/MK3 Factory Guide](/guides/mk2-mk3-factory-guide/)).
- **Do not** wait for a fix. The developer has not announced one for the cap; design around it now.

{{< callout type="verdict" title="Bottom Line" >}}
The 540 cap is the defining constraint of late-game Outworld Station, and it is still here in v1.1.1.0. But it is beatable: parallel dedicated channels for high-volume items, tiered routing for everything else, and the new per-minute presets to tune it all. Redesign one line at a time and your level 13+ factory will run at full speed -- no fix required.
{{< /callout >}}
