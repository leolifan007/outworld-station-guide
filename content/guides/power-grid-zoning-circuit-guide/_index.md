---
title: "Outworld Station Power Grid Zoning and Circuit Management - Never Black Out Again"
description: "Outworld Station power grid zoning strategy, circuit breaker placement, priority power routing, and the zoning method that keeps critical systems running during brownouts."
date: 2026-07-13
publishedAt: 2026-07-13T10:00:00+08:00
breadcrumb: Power Zoning
lastmod: 2026-07-14
draft: false
version: "1.1"
game_version: "v1.1.0"
category: power
tested: "Zoned power grid tested through 3 station rebuilds at Station Level 6-14."
---

## One New Building Killed Your Entire Station

You built an Assembler. The Assembler needed power. Your grid was at 95% capacity. The Assembler turned on, the grid hit 105%, and every building on your station flickered and shut down. Your oxygen stopped. Your drills stopped. Your reactor cooling stopped. Cascade failure in 15 seconds.

This happens because Outworld Station's default power distribution is first-come, first-served. Every building draws power equally until nothing works. The fix: power zoning with circuit breakers.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Split your grid into 3 zones: Critical (life support, reactors), Production (drills, assemblers), and Expansion (new builds, non-essential). Use Circuit Breakers at zone boundaries. Set Critical to 100% priority, Production to 70%, Expansion to 40%. This ensures oxygen and reactors never brown out.</p>
</div>

<hr>

<details class="md-fold">
<summary><span>Why the Default Grid Fails</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### The Problem

Outworld Station connects all buildings to a single power network by default. Every building draws power based on its individual demand, not your priorities. When total demand exceeds supply, the game applies a linear throttle: every building gets 80% power, meaning every building runs at 80%.

**What actually happens at 80% throttle:**
- Oxygen Generator produces 80% O2 (you slowly suffocate)
- Fusion Reactor coolant pump runs at 80% (overheating risk)
- Drills run at 80% (reduced ore)
- Solar panels still produce 100% (they are not throttled)
- Lights dim (harmless)

**The cascade failure chain:**
```
Dem<and exceeds supply -> All buildings throttled
-> Reactor coolant slows -> Reactor overheats -> Reactor shuts down
-> Power drops further -> More buildings throttle -> Station dead
```

</div></details>

<hr>

<details class="md-fold">
<summary><span>Circuit Breakers - Your Grid's Safety Valve</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### How Circuit Breakers Work

Circuit Breakers are special connectors that split your power grid into isolated zones. Each zone requests power from the breaker. The breaker allocates power based on priority settings.

**Circuit Breaker Types:**

| Breaker Type | Max Power Throughput | Cost | Unlock |
|-------------|:------------------:|------|--------|
| Basic Breaker | 500 kW | 10 Iron | Starting |
| Heavy Breaker | 2 MW | 20 Iron + 10 Copper | Station Level 4 |
| Smart Breaker | 10 MW | 40 Electronics + 10 Tungsten | Station Level 8 |

</div></details>

<hr>

<details class="md-fold">
<summary><span>The Three-Zone Strategy</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### Zone Layout

```
[Power Plant] -- [Smart Breaker]
                      |
        +-------------+-------------+
        |             |             |
    [Zone A:     [Zone B:      [Zone C:
     Critical]    Production]   Expansion]
```

**Zone A - Critical (Priority: 100%)**

| Buildings | Power Budget | Notes |
|-----------|:----------:|-------|
| Oxygen Generator | 50 kW | Always on |
| Life Support | 30 kW | Always on |
| Reactor coolant pumps | 100 kW | Essential to prevent meltdown |
| Core systems | 50 kW | Station computer, docking |
| **Total:** | **230 kW** | Reserve 20% headroom |

**Zone B - Production (Priority: 70%)**

| Buildings | Power Budget | Notes |
|-----------|:----------:|-------|
| Drills | 100-300 kW | Throttled first |
| Smelters | 200-500 kW | Can tolerate 60% throttle |
| Assemblers | 100-200 kW | Lower priority than smelters |
| **Total:** | **400-1000 kW** | Dynamic allocation |

**Zone C - Expansion (Priority: 40%)**

| Buildings | Power Budget | Notes |
|-----------|:----------:|-------|
| New buildings | Variable | First to lose power |
| Non-essential lighting | 10 kW | Cosmetic, can be 0 |
| Extra storage | 20 kW | Can wait |
| **Total:** | **Whatever remains** | First to be cut |

{{< diagram src="power-source-balance.svg" caption="Three-zone power grid: Critical (100%), Production (70%), Expansion (40%). If total demand exceeds supply, the breakers cut Zone C first, then Zone B, but Zone A stays at 100%." >}}

</div></details>

<hr>

## Setting Up Your First Zoned Grid

1. Place a Smart Breaker between your power plant and the rest of the station
2. Run separate power lines from the breaker to each zone
3. Set the priority levels (Critical=100%, Production=70%, Expansion=40%)
4. Move oxygen, life support, and reactor pumps to the Critical zone
5. Test: temporarily disconnect your main power plant and watch the zones throttle correctly

<hr>

## v1.1: Higher-Density Power With Mk2 Reactor and Storage

v1.1 adds the Mk2 tier for the Fusion Reactor and Energy Storage buildings. If you are rebuilding your Power Zone (Zone A) or scaling Production (Zone B), prefer the **Mk2 Fusion Reactor + Mk2 Energy Storage** combo: it delivers meaningfully higher output and storage density per footprint than the Mk1 parts, so you can satisfy the same power budget in less space (at higher build cost).

{{< callout "info" >}}**v1.1 bug fix:** The Fusion Reactor fuel storage and efficiency readout has been corrected -- old numbers in pre-v1.1 guides were wrong. Trust the in-game readout now; re-check any reactor math you copied from older sources.{{< /callout >}}

When zoning, keep the same priority split (Critical 100% / Production 70% / Expansion 40%) -- the Mk2 tiers just let you meet each zone's budget with fewer, denser tiles. See [Mk2/Mk3 Factory Guide](/guides/mk2-mk3-factory-guide/) for tier throughput, and [Fusion Reactor Guide](/guides/fusion-reactor-guide/) for the corrected reactor stats.

<hr>

### Related Guides
- [Multi-Source Power Grid Stability Guide](/guides/multi-source-power-grid-stability/)
- [Fusion Reactor Guide](/guides/fusion-reactor-guide/)
- [Antimatter Power Guide](/guides/antimatter-power-guide/)
