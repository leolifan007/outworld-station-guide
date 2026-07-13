---
title: "Outworld Station Biomass and Organic Processing - Turn Plants into Fuel and Materials"
description: "Outworld Station biomass processing chain from organic harvester to biofuel, plastic, and carbon composites. The renewable resource loop that supplements your mining."
date: 2026-07-13
publishedAt: 2026-07-13T10:00:00+08:00
breadcrumb: Biomass Processing
lastmod: 2026-07-13
draft: false
category: resources
tested: "Biomass loop tested at Station Level 5-8 on a forested planet."
---

## Your Mining Patches Are Not the Only Source

Ore runs out. Asteroids get depleted. But organic matter? It grows back. If you have access to a planet with vegetation or biological material, biomass processing gives you a renewable resource chain that never depletes.

Most players ignore biomass because it is slower than mining. They are wrong. A well-tuned biomass loop provides steady backup resources when your main patches run dry, and it produces materials (Carbon, Plastic, Biofuel) that are hard to make from pure ore.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Build an Organic Harvester on a vegetated planet surface. Feed biomass into a Bioreactor -> Biofuel Refinery -> Plastic Press chain. Output: Biofuel (burns in generators), Plastic (used in Electronics), Carbon Composite (advanced building material). One harvester supports 2 generators indefinitely.</p>
</div>

<hr>

<details class="md-fold">
<summary><span>The Biomass Production Chain</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### Full Chain

```
Organic Harvester -> Biomass (60/min)
    -> Bioreactor -> Raw Biofuel (20/min)
        -> Biofuel Refinery -> Refined Biofuel (15/min) [or -> Plastic Press -> Plastic (8/min)]
```

**Component Details:**

| Building | Input | Output | Power Draw | Notes |
|----------|-------|--------|:---------:|-------|
| Organic Harvester | Power | 60 Biomass/min | 30 kW | Place on green terrain only |
| Bioreactor | 60 Biomass/min | 20 Raw Biofuel/min | 50 kW | Needs water (pipe input) |
| Biofuel Refinery | 20 Raw Biofuel/min | 15 Biofuel/min | 40 kW | Can also produce Carbon Powder |
| Plastic Press | 10 Raw Biofuel/min | 8 Plastic/min | 35 kW | Plastic needed for Electronics |
| Composter | 30 Biomass/min | 15 Fertilizer/min | 20 kW | Fertilizer boosts harvester output |

</div></details>

<hr>

<details class="md-fold">
<summary><span>Biomass vs. Mining - When to Switch</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### Comparison

| Resource | Mining Rate | Biomass Rate | Renewable? | Setup Cost |
|----------|:----------:|:-----------:|:---------:|:---------:|
| Iron | 120/min (drill) | N/A | No | Low |
| Copper | 100/min (drill) | N/A | No | Low |
| Fuel (burnable) | 46 H2/min (cloud) | 15 Biofuel/min | Yes (bio) | Medium |
| Plastic | 0 (must craft) | 8/min | Yes | Medium-High |
| Carbon | 0 (rare ore) | 10/min (refinery byproduct) | Yes | Medium |

**When to Build Biomass:**
- You have a vegetated planet within freighter range
- Your coal/carbon deposits are depleted or very far
- You need steady Plastic for Electronics without expanding mining
- You want a renewable backup fuel source

**When NOT to Build Biomass:**
- You are still in the first 2 hours (ores are plentiful)
- Your nearby asteroids still have 2000+ Iron
- You have no freighter route to a vegetated planet

</div></details>

<hr>

<details class="md-fold">
<summary><span>The Fertilizer Loop</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### Renewable with Bonus

The Composter turns 30 Biomass/min into 15 Fertilizer/min. Feed Fertilizer back into the Organic Harvester to boost its output by 50% (90 Biomass/min instead of 60/min).

**Loop Efficiency:**

```
Harvester (60/min) -> 30/min to Composter -> 15 Fertilizer/min -> back to Harvester
                  -> 30/min to Bioreactor
Result: Harvester boosted to 90/min
Available for Bioreactor: 90 - 30 (composter) = 60/min
Net gain: 100% more biomass available for fuel production
```

This loop has a 15-minute startup investment (waiting for the first Fertilizer to complete) but pays off quickly.

</div></details>

<hr>

## Setting Up Your First Biomass Outpost

1. Scout a vegetated planet (green/brown terrain, visible flora)
2. Land and place 1 Organic Harvester on the greenest patch
3. Connect power (solar panel works if the planet has sunlight)
4. Build Bioreactor -> Biofuel Refinery chain
5. Route Biofuel into a generator for self-powered operation
6. Route Plastic back to your main station via freighter

<hr>

### Related Guides
- [Deep Space Gas Giant Mining Guide](/guides/deep-space-gas-giant-mining/)
- [Chemical Processing and Refining Chain](/guides/chemical-processing-refining-chain/)
- [Interplanetary Logistics Guide](/guides/interplanetary-logistics-guide/)
