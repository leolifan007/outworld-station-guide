---
title: "Assembly Line Ratios - Perfect Production Chains for Every Component"
description: "Overbuilding assemblers wastes space. Underbuilding starves your factory. Here are the exact assembler ratios for every common production chain in Outworld Station."
date: 2026-06-09
lastmod: 2026-06-09T22:09:00+08:00
draft: false
hidden: true
publishDate: 2026-06-13T14:08:00+08:00
category: production
version: 1.0.0.0
breadcrumb: Assembly Ratios
emoji: ⚖

---

Three assemblers per miner. That one number saves you ten rebuilds per playthrough.

Most people build their first factory by feel. One smelter feeds one constructor feeds one assembler, and somehow nothing works. The problem isnt your layout -- its your ratios. Every recipe in Outworld Station has a specific consumption and production rate, and until you match them, your line stalls or backs up. This guide gives you the exact numbers so you stop guessing.

## Quick Ratios Table

| Resource | Per Miner | Smelters Needed | Assemblers Fed |
|---|---|---|---|
| Iron Ore | 30/s | 3 | 6 |
| Copper Ore | 30/s | 3 | 6 |
| Bauxite | 22/s | 3 | 4 |
| Silica Sand | 27/s | 3 | 5 |
| Coal | 30/s | 3 | 6 |

These assume basic miners at 100% node purity. Scale up or down with overclocking and belt tier.

<div class="callout callout-tip">
  <strong>Miner math shortcut:</strong> Always round up when dividing miner output by belt capacity. A Mk.2 belt moves 12/s. If your miner outputs 15/s, you need two belts -- not a single overloaded one.
</div>

## Recipe Ratios

Every machine in Outworld Station has a base crafting speed of 1.0. Here are the production and consumption rates for the most common recipes:

| Recipe | Input/s | Output/s | Machines per Miner |
|---|---|---|---|
| Iron Ingot | 2.0 ore | 2.0 ingot | 1 smelter per miner |
| Copper Ingot | 2.0 ore | 2.0 ingot | 1 smelter per miner |
| Steel Ingot | 0.5 coal + 1.5 iron | 1.0 steel | 2 smelters per miner |
| Circuit Board | 2.0 copper + 1.0 iron | 2.0 board | 3 assemblers per smelter |
| Reinforced Plate | 3.0 iron | 1.0 plate | 2 assemblers per smelter |
| Wire Spool | 1.0 copper | 3.0 wire | 1 assembler per smelter |
| Motor | 1.0 iron + 1.0 wire | 1.0 motor | 2 assemblers per smelter |

## Assembler Per Miner Ratios

This is the table that actually matters during a build:

| Input | Miners | Smelters | Assembler Line | Final Output/s |
|---|---|---|---|---|
| 3x Iron | 3 | 3 | 6 assemblers (plates) | 6 plate/s |
| 3x Copper | 3 | 3 | 9 assemblers (wire) | 27 wire/s |
| 2x Iron + 1x Coal | 3 | 6 (3 iron + 3 steel) | 4 steel assemblers | 4 steel/s |
| 2x Copper + 1x Iron | 3 | 3 | 6 assemblers (boards) | 12 board/s |

<div class="callout callout-verdict">
  <strong>Bottom line:</strong> Your factory's bottleneck is almost never your miners. Its your assembler count. For every pure iron node, budget 3 smelters and 6 assemblers. Any less and your belts move air. Any more and half your machines sit idle.
</div>

{{< diagram "assembly-line-ratios.svg" >}}

## Building a Real Line: Circuit Boards from Scratch

Lets walk through one complete chain so you can see how the tables come together.

I have one pure copper node and one pure iron node. Each feeds a bank of 3 smelters. That gives me 6 copper ingot/s and 6 iron ingot/s.

The Circuit Board recipe consumes 2 copper ingot/s and 1 iron ingot/s. So I can feed exactly 3 assemblers from this line. Those 3 assemblers output 6 circuit boards per second -- enough to start feeding my first Computer assembler (which needs 3 board/s) with plenty of overflow.

Here is the full number breakdown:

- 2 miners -> 6 smelters total (3 per node)
- 6 smelters -> 3 circuit board assemblers
- 3 assemblers -> 6 board/s output

The common mistake is building 6 circuit board assemblers because "more is better." But those extra 3 assemblers just starve because the smelters cant keep up. You waste power, space, and resources.

For a reinforced plate chain off the same iron node, I split 3 of the 6 iron ingot/s into 3 plate assemblers. That gives me 3 reinforced plate/s -- exactly enough for T2 hub upgrades.

For more on building out production, see the [Station Layout Guide](/guides/station-layout-guide/) for clean factory design patterns.

## Scaling Tips

- **Belt capacity is your real bottleneck.** A saturated Mk.1 belt moves 6/s. Once your miner output exceeds that, you need multiple belts or a belt upgrade.
- **Overclock miners, not assemblers.** Power per item is lower when you overclock the miner versus overclocking every downstream assembler. Overclocking from 100% to 200% quadruples power draw -- use it sparingly.
- **Build in multiples of your smelter bank.** If one smelter feeds two assemblers for plates, then three smelters feed six. Design in threes and you will never have fractions.

For more on building your first base, see the [Beginner Mistakes Guide](/guides/beginner-mistakes/) -- it will save you a full rebuild.

## External Resources

- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)
- [r/OutworldStation Subreddit](https://reddit.com/r/OutworldStation)
