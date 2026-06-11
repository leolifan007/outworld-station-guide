---
title: "Module Component Manufacturing - Build Station Modules Faster"
description: "Outworld Station component production chain from raw materials to finished modules. Automate module assembly and stop waiting for slow fabricators."
date: 2026-06-05
emoji: ⚙️
lastmod: 2026-06-11T21:04:27+08:00
draft: false
category: production
version: 1.0.0.2

---

## Hand-Crafting Modules Is Killing Your Progress

You need 12 Circuit Arrays, 8 Structural Frames, and 4 Cooling Units for your next station upgrade. Your single fabricator takes 3.5 minutes per component. You wait. And wait. One hour later, you have enough for one upgrade tier.

The secret is not a faster fabricator - it is a dedicated component production line that runs while you do other things.

## Quick-Fix: Dedicated Component Line

> **Build one assembler per component type. Feed it directly from a dedicated smelter.**
> 
> One assembler making Circuit Arrays full-time produces 20 per hour. That is enough for two station upgrades. Two assemblers per component and you never wait again.
> 
> **Setup time:** 15 minutes per line. **Payoff:** No more waiting for components.

{{< diagram "module-manufacturing-chain.svg" >}}

## Component Production Requirements

| Component | Raw Materials | Craft Time | Assemblers Needed | Output/Hour |
|-----------|:-------------:|:----------:|:-----------------:|:-----------:|
| Circuit Array | 40 Copper, 20 Iron | 90 sec | 1 | 40 |
| Structural Frame | 60 Iron, 30 Steel | 120 sec | 1 | 30 |
| Cooling Unit | 25 Copper, 15 Water | 75 sec | 1 | 48 |
| Power Cell | 10 Copper, 5 Lithium | 60 sec | 1 | 60 |
| Processor Unit | 20 Silicon, 10 Copper | 180 sec | 2 | 40 |
| Shield Emitter | 30 Steel, 15 Superalloy | 240 sec | 2 | 30 |

## Building the Production Line

### Step 1: Assess Your Component Needs

Check your next 3 station upgrade tiers. Write down every component type and quantity required. This becomes your production target.

### Step 2: Start With the Most Common Component

Circuit Arrays appear in almost every upgrade. Build their line first. One smelter feeding copper + one assembler = steady supply.

### Step 3: Scale in Order of Bottleneck

Which component do you currently wait for the longest? Build that line next. Use this priority:

| Priority | Component | Why |
|:--------:|-----------|-----|
| 1 | Circuit Array | Most common in all upgrades |
| 2 | Structural Frame | High iron cost, slow craft |
| 3 | Processor Unit | Long craft time, needs 2 assemblers |
| 4 | Cooling Unit | Water requirement needs planning |
| 5 | Shield Emitter | Superalloy gated, build last |
| 6 | Power Cell | Fast to craft, low priority |

### Step 4: Set Up Inventory Pairs

Each assembler needs a dedicated input chest and output chest. Set up Inventory Pairs so:
- Input chest requests raw materials from your main line
- Output chest pushes finished components to a central storage

## Real Scenario: Processor Unit Wall at Station Level 9

I needed 24 Processor Units for the next research tier. My single fabricator would take 72 minutes. I had 6 assemblers idle.

**The fix:** Dedicated 2 assemblers to Processor Units with their own silicon and copper supply lines. Output went from 20/hour to 80/hour. Research unlocked in 18 minutes instead of 3 hours.

## FAQ

**Q: How many assemblers per component is enough?**

Start with 1 per component type. Add a second when you find yourself waiting more than 30 minutes for that component. 2 per component supports unlimited station expansion.

**Q: Do I need separate smelters for each line?**

Not at first. Use a main bus of ingots and pull what each line needs. Add dedicated smelters only when the main bus can not keep up.

**Q: Should I store finished components?**

Yes. Build a component warehouse with buffer chests. Store 50-100 of each component type. When you need 40 for an upgrade, you have them ready.

### External Resources

- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)
- [r/OutworldStationGame on Reddit](https://reddit.com/r/OutworldStationGame/)
- [Smelter Guide](/guides/automated-smelter-refinery-design/) - Feed your component line
- [Station Layout Guide](/guides/station-layout-guide/) - Plan your production floor
