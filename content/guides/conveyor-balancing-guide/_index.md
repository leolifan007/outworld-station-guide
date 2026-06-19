---
title: "Conveyor Belt Balancing & Throughput Guide - Never Starve an Assembler Again"
description: "One assembler is full while another starves. Here is how belt balancers, splitters, and throughput math fix your factory layout for good."
date: 2026-06-09
publishedAt: 2026-06-18T10:30:00+08:00
lastmod: 2026-06-13T20:46:43+08:00
draft: false
category: production
version: 1.0.0.0
breadcrumb: Conveyor Balancing
emoji: "鈿?


---

Your second assembler is starving while the first one overflows with iron plates.

**The quick fix:** a single splitter feeding two belts does NOT split evenly if one belt is backed up. Splitters only split the items that arrive. This is closely related to the pipe bottleneck problem — see our [Pipe Bottleneck Guide](/guides/pipe-bottleneck-guide/) for a deeper look at connector throughput limits. If your main belt delivers 15 items/sec and you split to two belts, each gets 7.5/sec -- but only when both output belts can carry that load. The moment one output backs up, the splitter diverts everything to the open belt. That is why your assembler line has one full stack and one empty one.

The fix is a **load balancer**: a network of splitters that forces even distribution regardless of backpressure. A 1-to-2 balancer is just one splitter. A 1-to-3 requires a specific arrangement. For any n-to-m balancer, the principle is the same: merge belts, then split them evenly, using extra splitters and belt loops to handle excess items.

Before you build a single balancer, you need to know your belt speeds. Outworld Station has multiple belt tiers, and mismatching them is the fastest way to bottleneck a base.

| Belt Tier | Max Throughput (items/min) | Max Throughput (items/sec) | Mk |
|-----------|---------------------------|---------------------------|-----|
| Basic     | 300                       | 5                          | Mk1 |
| Fast      | 600                       | 10                         | Mk2 |
| Express   | 900                       | 15                         | Mk3 |
| Hyper     | 1200                      | 20                         | Mk4 |

A Mk1 belt can carry 5 items/sec. If your miner outputs 6/sec, that belt is the bottleneck -- not the miner, not the assembler. Always build the belt to match or exceed your source throughput.

<div class="callout callout-tip">
<strong>Tip:</strong> Use a Mk3 or Mk4 belt on your main bus spine even if your miners are still on Mk1. You will upgrade the miners later, and digging up a main bus to replace the belt is painful. Splurge on the spine -- thank me later.
</div>

### The 3-to-3 Scenario

Here is the most common balancing problem: you have three belts of ore coming in (maybe from three miner rows) and you need to feed three smelter columns evenly. A naive manifold will starve the last smelter until the first two back up fully. In Outworld Station, that can take minutes if your throughput is high.

The 3-to-3 balancer uses four splitters arranged in a loop:

{{< diagram "belt-balancer-3to3.svg" >}}

The key is the feedback loop: the third splitter sends excess items back to the first splitter via a return belt. This recirculates overflow so that every output belt gets exactly one-third of the input, even if some outputs are partially blocked. The throughput stays balanced at all times, not just at steady state.

Build it in this order:
1. Split each input belt into two (splitters A, B, C)
2. Merge the outer lanes onto a new belt (splitter D)
3. Loop the merged lane back to splitter A
4. Each output now carries 1/3 of total input

This pattern scales to any odd-numbered balancer. For 5-to-5, you use six splitters. For 7-to-7, eight. The formula is roughly n + floor(n/2) splitters for an odd-numbered balancer.

### When Balancers Matter Most

Balancers are critical in these situations:

- **Train unloading:** 4 freight cars unloading to 16 smelter arrays. Without balancers, the closest arrays fill first and trains idle.
- **Multi-product assembly:** Feeding four different circuit types from a single belt of copper. Each circuit type needs equal copper access.
- **Space-limited builds:** On Outworld Station, real estate costs build time. A balancer uses fewer tiles than a long manifold that never quite balances.

<div class="callout callout-verdict">
<strong>Verdict:</strong> For low-throughput starter bases (under 60 items/min total), skip the balancer. A simple manifold will reach steady state quickly enough. For anything above that -- especially train-fed or multi-output setups -- build a proper balancer. The 30 seconds it takes to place four splitters will save you hours of wondering why your factory is running at 60% efficiency.
</div>

### Going Further

Balancers pair naturally with other throughput techniques. If your bottleneck is belt speed rather than distribution, our [Assembly Line Ratios Guide](/guides/assembly-line-ratios/) covers exact throughput targets for each production stage. For station layouts that feed into your balancers, the [Station Layout Guide](/guides/station-layout-guide/) covers multi-platform design and efficient space planning.

### External Resources

- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)
- [Factorio Balancers Book](https://factorioprints.com/search?q=balancer) -- the community reference for belt balancer designs (principles transfer directly)
- [Throughput Calculator](https://factoriolab.github.io/) -- works for Outworld Station production chains with minor tweaks to recipe rates
