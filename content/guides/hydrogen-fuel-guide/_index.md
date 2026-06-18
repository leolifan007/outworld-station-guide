---
title: "Outworld Station Hydrogen Fuel Production - Keep Your Cloud Miners and Reactors Running"
description: "Outworld Station hydrogen fuel chain from cloud miner gas extraction to reactor feed. Production ratios, pipe throughput, and the fuel starvation spiral you need to avoid."
date: 2026-06-18
publishedAt: 2026-06-18T17:50:00+08:00
publishDate: 2026-06-18T22:00:00+08:00
breadcrumb: Hydrogen Fuel
lastmod: 2026-06-18
draft: false
category: power
tested: "Hydrogen chain verified with 24 reactors running at Station Level 12."
---

## Your Reactors Are Drinking Gas Faster Than You Think

You built a Cloud Miner on a gas giant. It produces Hydrogen at 46/min according to the tooltip. You connect it to your power grid and build 4 Hydrogen Reactors. Everything works for 20 minutes. Then your reactors start flickering. Production slows. Your entire station starts browning out.

The problem: you did not account for pipe throughput, storage buffers, and the distance between your Cloud Miner and your reactors. Hydrogen is not like ore. It moves through pipes at a fixed rate, and if that rate is slower than your reactor burn rate, your grid collapses.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>One Cloud Miner produces 46 Hydrogen/min, which feeds 6 Small Reactors or 4 Large Reactors. You need one Liquid Pipe segment for every 10 tiles of distance. Buffer tanks between the miner and reactors prevent brownouts during demand spikes.</p>
</div>

<hr>

<details class="md-fold">
<summary><span>The Hydrogen Chain from Cloud to Power</span><span class="fold-toggle">â–?/span></summary>

<div class="fold-body">

### Full Production Chain

```
Cloud Miner (46 H2/min)
    -> Gas Pipe
    -> Hydrogen Tank (buffer, ~2000 capacity)
    -> Gas Pipe
    -> Hydrogen Reactors (burn 7-8 H2/min each)
    -> Power Grid
```

### Component Breakdown

| Component | Input | Output | Notes |
|-----------|-------|--------|-------|
| Cloud Miner | Power (50kW) | 46 H2/min | Must be on a gas giant node |
| Liquid Pipe | H2 gas | H2 gas | Throughput depends on pipe upgrades |
| Hydrogen Tank | H2 gas | H2 gas | 2000 capacity, absorbs spikes |
| Small H2 Reactor | 8 H2/min | 200 kW | Best ratio per fuel unit |
| Large H2 Reactor | 14 H2/min | 500 kW | Best power per building slot |

<div class="callout callout-tip">
  <h4>Cloud Miner Placement</h4>
  <p>Build the Cloud Miner directly on the gas giant resource node. It does not need a separate drill or smelter. The output pipe connects to your station network through a freighter dock or wormhole link if the gas giant is on another planet.</p>
</div>

</div></details>

<hr>

<details class="md-fold">
<summary><span>Reactor Ratios That Work</span><span class="fold-toggle">â–?/span></summary>

<div class="fold-body">

### Cloud Miner to Reactor Math

| Miner Count | H2 Output | Small Reactors | Large Reactors | Power Output |
|-------------|-----------|---------------|---------------|-------------|
| 1 | 46/min | 5-6 | 3-4 | 1.0-1.2 MW |
| 2 | 92/min | 11-12 | 6-7 | 2.4-3.5 MW |
| 3 | 138/min | 17-18 | 9-10 | 3.6-5.0 MW |
| 4 | 184/min | 23-24 | 13-14 | 5.2-7.0 MW |

### Recommended Setup by Station Level

| Station Level | Reactors | Miners | Buffer Tanks | Pipe Upgrades |
|--------------|----------|--------|-------------|---------------|
| 4-6 | 2 Small | 1 | 1 | None |
| 7-9 | 6 Small + 2 Large | 2 | 2 | Mk2 pipes |
| 10-12 | 4 Large | 2-3 | 3-4 | Mk3 pipes |
| 13+ | 8+ Large | 4+ | 6+ | Mk3 pipes + parallel lines |

{{< diagram src="hydrogen-chain-flow.svg" caption="Hydrogen production chain: Cloud Miner -> Buffer Tank -> Reactors -> Power Grid. Buffer tanks prevent brownouts." >}}

<div class="callout callout-synergy">
  <h4>Hybrid Power Strategy</h4>
  <p>Do not go all-in on Hydrogen. Keep solar panels as your base load and use Hydrogen reactors for peak demand. Solar handles day-to-day operations. Hydrogen kicks in during smelting spikes or raid power draw. This saves fuel and gives you a safety margin.</p>
</div>

</div></details>

<hr>

<details class="md-fold">
<summary><span>The Fuel Starvation Spiral (And How to Prevent It)</span><span class="fold-toggle">â–?/span></summary>

<div class="fold-body">

### How a Brownout Becomes a Blackout

1. Reactors use more H2 than your pipes deliver
2. Tank buffer drains to zero
3. Reactors shut down one by one
4. Power drops below consumption
5. Cloud Miner loses power -> H2 production stops
6. All remaining reactors starve
7. **Full station blackout**

This is the dead station spiral. Unlike solar, Hydrogen reactors cannot restart themselves after a blackout because they need power to pump fuel.

### Prevention Checklist

- [ ] Buffer tank holds at least 10 minutes of reactor fuel
- [ ] Pipe upgrades match reactor count (Mk2 pipe for 4+ reactors)
- [ ] Cloud Miner is on a separate power circuit from reactors
- [ ] Emergency solar panels can power the Cloud Miner alone
- [ ] Low-fuel alarm triggers at 20% tank level

<div class="callout callout-verdict">
  <h4>Emergency Recovery</h4>
  <p>If your station fully blacks out on Hydrogen: disconnect all reactors from the grid, power ONE reactor with emergency solar, manually fill its fuel tank from stored hydrogen, restart that reactor, then slowly bring the rest online. Do not reconnect all at once or you will spike the grid and crash again.</p>
</div>

</div></details>

<hr>

## Hydrogen vs Nitrox vs Fusion

For our full comparison of every power system, see [Multi-Source Power Grid Stability Guide](/guides/multi-source-power-grid-stability/). But here is the short version:

| Fuel | Availability | Power Density | Complexity | Best For |
|------|-------------|---------------|------------|----------|
| Hydrogen | Infinite (gas giants) | Medium | Medium | Mid-game primary power |
| Nitrox | Crafted (O2 + H2) | High | High | Fusion reactors (late game) |
| Solar | Free (sun) | Low | Low | Base load, any stage |

<hr>

### Related Guides
- [Fusion Reactor Guide - Nitrox Fuel Management](/guides/fusion-reactor-guide/)
- [Multi-Source Power Grid Stability](/guides/multi-source-power-grid-stability/)
- [Nitrox Gas Processing Guide](/guides/nitrox-gas-processing-guide/)
