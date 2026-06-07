---
title: "Automated Smelter & Refinery Design - From Raw Ore to Ready Ingots"
description: "Outworld Station ore-to-ingot automation, smelter array scaling, and refinery throughput optimization. Belt-balance at every stage."
date: 2026-06-05
emoji: 🔥
lastmod: 2026-06-07T19:01:43+08:00
draft: false
category: production
version: 1.0.0.2

---

## Your Smelter Line Is the Hidden Bottleneck

You look at your iron plate buffer and wonder why it is always half-empty. Your miners are running. Your assemblers are idle. The problem is not enough ore - it is how your smelters are arranged.

A single smelter processes 30 ore per minute. Without a balanced input belt, three smelters struggle to fill the same gap that one properly-fed smelter could. Here is the layout that scales.

## Quick-Fix: The 2-to-1 Belt Balancer

> **Drop a 2-to-1 belt balancer before your smelter input.**
> If two miner belts feed one smelter line, use a splitter array to balance both lanes equally. Ore starvation on one side cuts throughput by 50% immediately.
> 
> **Fix time:** 30 seconds. **Throughput gain:** 1.8x on existing smelters.

{{< diagram "smelter-refinery-chain.svg" >}}

## Smelter Array Scaling Rules

| Array Size | Ore Input/min | Ingot Output/min | Smelters | Power Draw |
|-----------|:-------------:|:----------------:|:--------:|:----------:|
| Small | 120 | 80 | 4 | 120 kW |
| Medium | 300 | 200 | 10 | 300 kW |
| Large | 600 | 400 | 20 | 600 kW |
| Mega | 1200 | 800 | 40 | 1.2 MW |

Each smelter consumes 30 kW. A single belt can feed 15 ore/sec. Beyond that, split to a second input belt.

## Three Refinery Layouts

### 1. Linear Chain (Early Game)
Smelters in a straight line with one input belt and one output belt. Simple, cheap, but bottlenecks at the far end.

### 2. Parallel Arrays (Mid Game)
Two rows of smelters facing each other. Shared output belt doubles throughput without doubling belt length.

### 3. Stacked Modules (Late Game)
Multiple smelter layers stacked vertically using elevators. Each layer is a complete parallel array. Requires Superalloy unlocked.

| Layout | Space Used | Throughput | Complexity | Tech Required |
|-------|:----------:|:----------:|:----------:|:-------------:|
| Linear Chain | 30 tiles | 80 ingot/min | Low | Basic Smelting |
| Parallel Arrays | 45 tiles | 200 ingot/min | Medium | Automation |
| Stacked Modules | 80 tiles | 800 ingot/min | High | Superalloy + Elevators |

## Real Scenario: Copper Plate Starvation at Station Level 6

My circuit assemblers kept stalling. Copper plate production showed 160/min but assemblers needed 210/min. One belt fed 6 smelters but only 4 were getting ore.

**The fix:** Split the ore input into two belts before the smelter line. Each belt feeds 3 smelters evenly. Copper plate output jumped to 240/min. Circuit production went from 60% to 100% in under 5 minutes.

## FAQ

**Q: Should I smelt on-site or at base?**

Always smelt on-site if the ore patch has 4+ miners. Transport ingots instead of ore - they stack twice as dense in cargo drones.

**Q: How do I know when to add more smelters?**

Watch the smelter input buffer. If it stays below 50% while miners are full, add more smelters. If miners are empty, add more miners.

**Q: Do refinery upgrades stack?**

Yes. Speed modules in refineries stack multiplicatively with belt upgrades. One speed upgrade + one belt upgrade = 2.2x throughput, not 2x.

### External Resources

- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)
- [r/OutworldStationGame on Reddit](https://reddit.com/r/OutworldStationGame/)
- [Resource Guide](/guides/resources/) - Ore locations and quality tiers
