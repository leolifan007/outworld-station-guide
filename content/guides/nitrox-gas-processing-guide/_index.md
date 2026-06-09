---
title: "Nitrox & Advanced Gas Processing -- From Gas Starvation to Infinite Fuel"
description: "Outworld Station nitratium harvesting, biomass-to-gas conversion, automated nitrox production chains, and the advanced gas processing tree that breaks your mid-game fuel bottleneck."
date: 2026-06-09
lastmod: 2026-06-09T22:30:00+08:00
draft: false
hidden: true
publishDate: 2026-06-12T02:30:00+08:00
category: production
version: 1.0.0.0
breadcrumb: Gas Processing
emoji: Gas
---

## Your Fusion Reactor Is Starving and You Do Not Know Why

You built a gas extractor. Hooked it up. Nitrox was flowing. Then Station Level 6 hit, you added a second Fusion Reactor, and suddenly your Nitrox buffer is dropping faster than you can produce it. You check the gas vent -- still pumping. You check the refinery -- still running. But the numbers do not add up.

The problem is not a bug. It is that basic gas extraction tops out hard around Level 6-7. The solution is advanced gas processing: biomass conversion, nitratium harvesting, and a fully automated production chain that scales past what any single gas vent can supply.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Basic gas extraction gives you ~150-200 units/hour. One Fusion Reactor alone burns 720 units/hour of Nitrox (12/min). At Level 6+, you need advanced processing: Nitratium Nodes for unlimited raw gas, biomass processors for organic-to-gas conversion, and a multi-input chemical synthesizer to turn raw gasses into Nitrox at industrial scale. This guide shows the full chain.</p>
</div>

## Quick-Fix: The Three-Tier Gas Upgrade Path

Before diving into the full build, here is where you are and where you need to be:

| Tier | Gas Source | Output | When | What You Need |
|------|-----------|--------|------|--------------|
| Tier 1 | Single Gas Vent + Refinery | ~200/hr Nitrox | Level 1-5 | 1 Gas Extractor + 1 Refinery |
| Tier 2 | Multiple Vents + Chemical Synthesizer | ~600/hr Nitrox | Level 6-8 | 2-3 Extractors + 1 Chem Synth |
| Tier 3 | Nitratium Nodes + Biomass + Automation | 1500+/hr Nitrox | Level 8+ | Nitratium Harvester + Biomass Processor + Drone Network |

If you are at Level 6 and your Nitrox is draining, jump straight to Tier 2. Skip Tier 1 expansions -- they are a dead end.

{{< diagram "nitrox-processing-flow.svg" >}}

## Step 1: Nitratium -- The Mid-Game Gas Gamechanger

Nitratium (sometimes called Nitridium in older patches) is a resource node found on certain asteroid fields and outer planets. It looks like a purple crystal cluster. Unlike gas vents that deplete, Nitratium Nodes regenerate over time.

### Where to Find Nitratium

| Location | Node Count | Regeneration Rate | Danger Level |
|---------|:----------:|:-----------------:|:-----------:|
| Cerberus Belt | 3-5 nodes | 30/min per node | Low |
| Outer Asteroid Field | 2-3 nodes | 25/min per node | Medium |
| Junk Yard (near Cerberus) | 4-6 nodes | 35/min per node | High (Hostile) |
| Lava World Craters | 1-2 nodes | 40/min per node | Extreme |

**Best early spot:** Cerberus Belt. Low danger, decent node count, close to starting area.

### Setting Up Nitratium Harvesting

1. Build a **Nitratium Harvester** (unlocked after Chemical Processing research, Station Level 7+)
2. Place it directly on a Nitratium node
3. Connect power (50/sec per harvester)
4. Output goes to a storage tank or directly to your Chemical Synthesizer

One harvester on one node produces enough raw gas for one Fusion Reactor + one Chemical Synthesizer running at 60% capacity.

## Step 2: Biomass-to-Gas Conversion

Biomass processing is the part most players miss. It lets you convert organic materials into Hydrogen and Oxygen -- the building blocks of Nitrox. This is critical when your gas vents are far away or depleted.

### The Biomass Chain

| Input | Process | Output | Rate |
|-------|---------|--------|:----:|
| 10 Organic Waste | Biomass Processor | 5 Biomass Slurry | 10/sec |
| 5 Biomass Slurry | Chemical Synthesizer | 3 Hydrogen + 2 Oxygen | 8/sec |
| 3 Hydrogen + 2 Oxygen | Chemical Synthesizer | 1 Nitrox | 4/sec |

**Where to get Organic Waste:** Asteroid mining byproduct, crop farming on Terran planets, or recycling organic modules.

<div class="callout callout-tip">
  <h4>Biomass Loop Tip</h4>
  <p>Set up a dedicated recycling line that feeds asteroid byproducts into your biomass chain. Most players trash this stuff. It is free fuel. I run a single Biomass Processor fed by one Recycling Drone and it covers 30% of my Nitrox demand at Level 8.</p>
</div>

## Step 3: The Automated Production Chain

Here is the full build for a self-sustaining Level 8+ gas processing line:

### Bill of Materials

| Building | Quantity | Power Draw | Output |
|---------|:--------:|:----------:|:------:|
| Nitratium Harvester | 2 | 100/sec | 60 raw gas/min |
| Gas Extractor (any vent) | 1 | 30/sec | ~200 base gas/hr |
| Chemical Synthesizer | 2 | 80/sec each | 40 Nitrox/min combined |
| Biomass Processor | 1 | 40/sec | 15 slurry/min |
| Storage Tanks | 4 | 0 | 4x buffer |
| Drone Hub + 3 Drones | 1 | 20/sec | Logistics |

**Total power draw:** ~350/sec -- one Fusion Reactor can handle this with headroom.

### Layout Priority

1. **Gas Extractor** on the closest vent feeds the Chemical Synthesizers directly
2. **Nitratium Harvesters** feed into a shared storage tank
3. **Biomass Processor** feeds into the same Chemical Synthesizers
4. Chemical Synthesizers output Nitrox into a dedicated tank
5. Drones distribute Nitrox to Fusion Reactors

<div class="callout callout-warning">
  <h4>Do Not Mix Outputs</h4>
  <p>Keep your raw gas tank and your biomass tank separate until they reach the Chemical Synthesizer. Mixing them in a single tank causes priority problems -- the synthesizer will grab whatever is available instead of maintaining a balanced input. I lost a whole station to this when my raw gas tank filled with biomass slurry and the synthesizer could not convert it.</p>
</div>

## Real Scenario: My Lava World Nightmare

I built my mid-game station on a Lava World. Great for minerals. Terrible for gas. The nearest gas vent was three wormhole jumps away on a Terran planet. My Fusion Reactors were burning Nitrox at 24/min (two reactors) and my supply line was one freighter making a 5-minute round trip.

**The fix:** I dropped two Nitratium Harvesters on nearby Cerberus Belt nodes, set up a small Biomass Processor fed by asteroid mining byproducts, and built two Chemical Synthesizers on my main station. The Nitratium freighters delivered raw gas every 3 minutes. The biomass loop covered the gap. Total Nitrox production went from struggling at 300/hr to a stable 1800/hr.

Never lost power on that save again.

## Scaling Beyond Level 10

Once you hit Station Level 10, gas demand skyrockets. Here is the scaling formula:

- **1 Fusion Reactor Mk2** = 30 Nitrox/min = 1800/hr
- **1 Advanced Chemical Synthesizer** (unlocked Level 10) = 40 Nitrox/min = 2400/hr
- **3 Nitratium Harvesters + 1 Biomass Processor** = enough raw gas for ~4000/hr

For a Level 12 station running 3 Fusion Mk2 reactors, you need:

| Component | Quantity |
|-----------|:--------:|
| Nitratium Harvester | 4 |
| Biomass Processor | 2 |
| Chemical Synthesizer | 3 (or 2 Advanced) |
| Storage Tanks | 6 |
| Drone Hub | 1 (dedicated to gas logistics) |

See our [Fusion Reactor Guide](/guides/fusion-reactor-guide/) for exact fuel consumption math, and the [Deep Space Gas Giant Mining Guide](/guides/deep-space-gas-giant-mining/) for remote gas outpost setups.

## Community Resources

- [Steam Guides](https://steamcommunity.com/app/3242950/guides/) _(opens in new tab)_
- [Outworld Station on Reddit](https://www.reddit.com/r/IndieGaming/comments/1ijv6yx/check_out_my_new_space_factory_game_outworld/) _(opens in new tab)_

