---
title: "Multi-Source Power Grid Stability - Balance Solar, Fusion & Antimatter"
description: "Outworld Station power grid balancing across multiple generation sources. Prevent brownouts, cascade failures, and black screens at the worst time."
date: 2026-06-05
publishDate: 2026-06-13T09:28:00+08:00
hidden: true
breadcrumb: Power Grid
emoji: ⚡
lastmod: 2026-06-05
draft: false
category: power
version: 1.0.0.2
---

## Your Power Grid Will Fail. The Question Is When.

You have solar panels, a fusion reactor, and maybe a small antimatter plant. Power shows green on the dashboard. Then you add one new assembler line and the entire grid collapses. Solar drops at night, fusion lags behind, antimatter spins up too late.

The fix is not another reactor. It is a load-balanced grid that layers generation sources by response time.

## Quick-Fix: The 3-Layer Power Priority

> **Layer your power sources by response time:**
> - Layer 1 (Instant): Solar panels - handles base load, 0 spin-up time
> - Layer 2 (Fast): Battery banks - absorbs spikes, 2 sec response
> - Layer 3 (Slow): Fusion/Antimatter - handles sustained load, 30-60 sec spin-up
> 
> Connect solar directly to the grid. Connect batteries in front of fusion. Fusion only fires when batteries drop below 40%.

{{< diagram "multi-source-power-grid.svg" >}}

## Generation Source Comparison

| Source | Output | Spin-Up | Fuel Cost | Maintenance | Best For |
|--------|:-----:|:-------:|:---------:|:-----------:|----------|
| Solar Panel | 15 kW | Instant | None | None | Base load, daytime |
| Battery Bank | 50 kW storage | 2 sec | None | Low | Spike absorption |
| Small Reactor | 100 kW | 15 sec | Uranium | Medium | Mid-game base load |
| Fusion Reactor | 500 kW | 45 sec | Helium-3 | High | Sustained high load |
| Antimatter Plant | 2 MW | 60 sec | Antimatter | Very High | Endgame primary |

## Grid Design Patterns

### Pattern 1: Solar-Battery Hybrid (Early Game)

Your first 50 hours run on solar with battery backup. This handles 100-150 kW demand with no fuel cost.

**Setup:** 12 solar panels + 4 battery banks. Solar handles daytime, batteries cover night and spikes.

### Pattern 2: Reactor-Fusion Hybrid (Mid Game)

Once demand exceeds 150 kW, add a small reactor or fusion plant.

**Setup:** Solar handles 80 kW base load. Batteries buffer spikes. Reactor fires when load exceeds 80 kW for more than 30 seconds.

### Pattern 3: Tri-Source with Cascading Priority (Late Game)

All three sources with automatic cascading. Solar handles absolute base load. Batteries smooth transitions. Fusion/antimatter handles the difference.

| Time of Day | Solar | Battery | Fusion | Total Available |
|:-----------:|:-----:|:-------:|:------:|:---------------:|
| Day peak | 120 kW | 50 kW | 500 kW | 670 kW |
| Night | 0 kW | 50 kW | 500 kW | 550 kW |
| Spike event | 120 kW | 50 kW | 500 kW | 670 kW |

## Real Scenario: Night Cycle Cascade at Station Level 14

My station ran fine during the day - 4 solar arrays, 2 battery banks, and 1 fusion reactor at 60% load. At night, solar dropped to zero. Batteries drained in 90 seconds. Fusion ramped up but needed 45 seconds. My grid crashed for 30 seconds, resetting all fabricators.

**The fix:** I set the battery-to-fusion trigger at 60% instead of 40%. Batteries started feeding fusion spin-up earlier. Transition became seamless. Zero grid crashes since.

## FAQ

**Q: Should I use one big reactor or many small ones?**

Multiple small reactors (3-4) are safer than one big one. If one fails, you lose 25% capacity instead of 100%. Distribution also reduces load on any single fuel line.

**Q: How much battery capacity do I need?**

One battery bank per 50 kW of solar capacity. During a full 8-minute night cycle, batteries should cover the solar gap plus a 20% safety margin.

**Q: Can I isolate parts of the grid?**

Yes. Use power switches to isolate non-critical modules during emergencies. Set up automatic isolation when grid load exceeds 90%.

### External Resources

- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)
- [r/OutworldStationGame on Reddit](https://reddit.com/r/OutworldStationGame/)
- [Power Management Guide](/guides/power-management/) - Power source basics
- [Fusion Reactor Guide](/guides/fusion-reactor-guide/) - Fusion deep dive
