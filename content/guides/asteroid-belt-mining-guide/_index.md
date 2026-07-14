---
title: "Asteroid Belt Mining Guide - Find Ore Nodes & Automate Your First Belt"
description: "Your starting asteroid belt runs dry faster than you expect. Here is how to find high-yield ore nodes, build miners, and automate belt-to-base resource flow."
date: 2026-06-09
lastmod: 2026-06-09T22:45:00+08:00
draft: false
hidden: false
publishedAt: 2026-06-09T23:15:00+08:00
category: production
version: 1.0.0.0
breadcrumb: Asteroid Mining
---

Your first few hours in Outworld Station feel generous. Asteroids float by, your atomizer turns them into iron and copper, and life is good. Then station level 3 hits and suddenly your smelters are starving. That is because hand-atomizing asteroids is a tutorial mechanic, not a real strategy.

**The quick fix:** Unlock the **Miner module** (tech tree, tier 1 production, costs 15 data shards) and place it directly on an **ore node** inside any asteroid belt. A single miner on a standard node produces 22-30 ore per second -- roughly 10x what one player can atomize by hand. Connect it to a buffer chest, then a cargo launcher, and your station never starves again.

## Where to Find Ore Nodes

Not every rock in the belt is mineable. Ore nodes are marked with a distinct pulsing icon on your navigation map -- a resource crystal icon with a percentage next to it. That percentage is node purity, and it determines your miner throughput.

| Node Purity | Ore/sec | Belts per Miner | Best For |
|:---|---:|---:|:---|
| Low (30-50%) | 10-15 | 1-2 | Iron, Copper early game |
| Standard (60-80%) | 22-30 | 3-4 | Primary production backbone |
| Rich (90-100%) | 35-45 | 5-6 | High-throughput smelter arrays |
| Exotic (Nitratium) | 8-12 | 1 | Mid-game advanced materials |

Asteroid Belt 1 (your starting zone) has 3-4 standard purity iron nodes and 2 copper nodes. Belt 2 unlocks around station level 5 and adds Nitratium and Silica deposits. Belt 3 comes at station level 8 with Carbon Ore deposits -- critical for late-game alloy crafting.

## The Three-Minute Automated Mining Setup

Build your first mining outpost in under three minutes with this exact recipe.

1. **Place a Miner** on a standard or better node. Orient the output port toward your belt direction. Miners auto-orient to the node surface, so rotate the base before confirming placement.

2. **Run a conveyor belt** from the miner output to a small storage crate. Keep it short -- every 10 tiles of belt adds 3 seconds of latency between mining and storage. If your miner is more than 20 tiles from the nearest valid placement spot, build a buffer crate mid-way.

3. **Add a Cargo Launcher** within two tiles of the storage crate. Power it with a small solar panel (two panels cover a standard miner + launcher draw). Set the launcher target to your station's main cargo hub.

4. **Set a production rule** on the launcher: "Maintain 200 ore in station storage." This prevents your belt from being clogged when station buffers are full.

5. **Walk away.** You now have automated ore delivery.

{{< diagram "asteroid-belt-mining-flow.svg" >}}

## Expanding to Multi-Belt Operations

When Belt 1 nodes run dry (expect this after roughly 12-15 hours of active production), you have two options.

**Option A: Prospect Belt 2.** Unlock it from the station level-up rewards screen at level 5. The navigation map shows its entry point as a highlighted wormhole marker on the far side of Belt 1. Belt 2 nodes are richer (70-85% standard purity) and include Nitratium, a material required for ship component crafting.

**Option B: Overclock your existing miners.** The miner upgrade (tech tier 2, costs 45 data shards) increases output by 40%. Pair it with a belt upgrade to handle the increased throughput. An overclocked standard miner on a 70% node matches a fresh rich node output.

I prefer Option A for the Nitratium access and Option B as a stopgap when your station is in mid-expansion and you cannot spare the resources for a full belt migration. If you are building out your first multi-belt layout, my [Remote Mining Outpost Guide](/guides/remote-mining-outpost-guide/) covers the outpost blueprint step by step.

Set up a dedicated freighter route between Belt 2 and your station rather than a second launcher. Freighters handle bulk cross-belt transfers better than launchers, which are tuned for single-node outpost feeds. The route costs 50 Alloy Plates upfront and zero ongoing fuel for in-system hops.

## The Nitratium Processing Bottleneck

Nitratium nodes are the biggest trap for mid-game players. A Nitratium miner produces at roughly one-third the rate of a standard ore miner (8-12 ore/sec), and you need 200 Nitratium for every tier-2 ship component. That means one miner needs to run for roughly 20 seconds of continuous uptime to fill a single component build.

Plan for at least **two Nitratium miners** in Belt 2 to keep your shipyard fed. Buffer the output into a dedicated storage crate and set a priority launcher link. A single launcher with priority rules will drain the buffer before touching your main ore lines.

{{< diagram "asteroid-belt-nitratium-chain.svg" >}}

## Community Resources

The Outworld Station community on Steam has a production calculator spreadsheet that maps exact node locations and purity values for every belt. Some players on Reddit maintain node maps with GPS-style coordinates. Both are worth bookmarking if you plan to scale beyond standard mining layouts.

- [Outworld Station Steam Community Guides](https://steamcommunity.com/app/3242950/guides/) _(opens in new tab)_
- [Outworld Station Production Calculator](https://steamcommunity.com/app/3242950/guides/) _(opens in new tab)_
- [Outworld Station discussion on Reddit](https://www.reddit.com/r/IndieGaming/comments/1ijv6yx/check_out_my_new_space_factory_game_outworld/) _(opens in new tab)_
- Read the [Freighter & Mining Guide](/guides/freighter-mining-guide/) for bulk resource transport between belts
