---
title: "Chemical Processing & Refining Chain - Turn Raw Gas Into Advanced Resources"
description: "Outworld Station chemical processing chains from raw gas extraction to advanced resource synthesis. Complete refinery pipeline for plastic, fuel, and rare chemicals."
date: 2026-06-05
publishDate: 2026-06-09T21:40:00+08:00
hidden: false
breadcrumb: Chemical Refining
emoji: 🧪
lastmod: 2026-06-05
draft: false
category: resources
version: 1.0.0.2
---

## Your Chemical Plant Is a Mess of Pipes and Confusion

You have gas coming in from three sources. Pipes go everywhere. Chemical synthesizers blink on and off. Sometimes you have 500 plastic and sometimes zero. The problem is not enough gas - it is a refinery chain without a plan.

A single organized chemical processing line turns raw gas into every advanced resource you need, with zero manual babysitting.

## Quick-Fix: The One-In-One-Out Refinery Rule

> **Each chemical synthesizer should have exactly one input gas and one output product.**
> 
> Do not mix gases in a single synthesizer input. Do not split a synthesizer output to multiple destinations without a buffer tank. Simple chains are reliable chains.
> 
> **Setup time:** 20 minutes for a complete 6-synthesizer line. **Output:** Every chemical your station needs, running 24/7.

{{< diagram "chemical-processing-chain.svg" >}}

## Chemical Processing Chains

| Input Gas | Synthesizer | Output Product | Craft Time | Used For |
|-----------|:-----------:|:--------------:|:----------:|----------|
| Oxygen | 1x Synth | Plastic | 15 sec | Components, Storage, Decor |
| Hydrogen | 1x Synth | Fuel Cells | 20 sec | Power, Drones, Ships |
| Oxygen + Nitrox | 2x Synth | Coolant | 25 sec | Fusion Reactors, Lasers |
| Methane | 1x Synth | Carbon Fiber | 30 sec | Superalloy, Armor Plating |
| Helium-3 | 2x Synth | Fusion Pellets | 45 sec | Fusion Power, Advanced Research |
| Argon | 1x Synth | Shield Gas | 20 sec | Shield Generators, Welding |

## Building the Refinery Line

### Step 1: Raw Gas Buffer

Before any synthesizer, place a storage tank for each gas type. Tank holds 500 units. This buffer smooths out fluctuations in gas supply.

| Gas Type | Tank Size | Fill Time (1 extractor) | Buffer For |
|----------|:---------:|:----------------------:|:----------:|
| Oxygen | 500 | 5 min | 33 plastic crafts |
| Hydrogen | 500 | 4 min | 25 fuel cell crafts |
| Nitrox | 500 | 6 min | 20 coolant crafts |
| Methane | 500 | 7 min | 16 carbon fiber crafts |

### Step 2: Synthesizer Array

Arrange synthesizers in a line, one per chemical product. Connect each to its dedicated gas tank. Set the output to feed into a product-specific storage chest.

### Step 3: Product Distribution

Use Inventory Pairs to move finished chemicals where they are needed:
- Plastic ->Component storage
- Fuel Cells ->Power plant + drone hub
- Coolant ->Fusion reactor input
- Carbon Fiber ->Superalloy smelter
- Fusion Pellets ->Fusion reactor fuel slot

### Step 4: Scaling

When demand exceeds supply, duplicate the bottleneck synthesizer. Do not upgrade - duplicate. Two synthesizers making plastic output 2x with no loss.

| Production Target | Synthesizers Needed | Gas Required/hr | Output/hr |
|:----------------:|:-------------------:|:---------------:|:---------:|
| Basic chemicals | 3-4 | 200-400 | 100-200 |
| Mid-range | 6-8 | 500-800 | 300-500 |
| Full automation | 10-12 | 1000-1500 | 600-1000 |

## Real Scenario: Plastic Starvation at Station Level 10

My circuit assemblers needed 60 plastic per minute. One synthesizer made 4 plastic per minute. I was 15 plastic per minute short. Every 4 minutes, assemblers stalled for 1 minute.

**The fix:** Added a second oxygen synthesizer and a second plastic synthesizer. Plastic output went from 4/min to 8/min. Circuit assemblers ran at 100%. Production gain: 120 extra circuits per hour.

## FAQ

**Q: Do I need every chemical product?**

No. Start with Plastic and Fuel Cells. Add Coolant when you build a fusion reactor. Add Carbon Fiber when you unlock Superalloy. Add Shield Gas and Fusion Pellets in late game.

**Q: Can I store excess chemicals?**

Yes. Build a chemical warehouse with 3-5 storage tanks per product type. Set a minimum buffer of 100 units before distribution. Excess above 100 goes to storage.

**Q: Do synthesizers need power?**

Yes. Each synthesizer draws 15 kW. A full 12-synthesizer line needs 180 kW continuous. Factor this into your power budget.

### External Resources

- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)
- [r/OutworldStationGame on Reddit](https://reddit.com/r/OutworldStationGame/)
- [Gas Systems Guide](/guides/gas-systems/) - Gas extraction basics
- [Gas Mining Guide](/guides/deep-space-gas-giant-mining/) - Remote gas outposts
- [Power Grid Guide](/guides/multi-source-power-grid-stability/) - Power for chemical plants
