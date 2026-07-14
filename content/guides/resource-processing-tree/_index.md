---
title: "Resource Processing Tree - Complete Material Refining Chain Reference"
description: "Full resource processing tree for Outworld Station v1.1. Every raw material, intermediate product, and endgame component mapped from asteroid to finished good with refining chain and usage notes."
date: 2026-07-14
lastmod: 2026-07-14T12:50:00+08:00
draft: false
hidden: true
publishDate: 2026-07-23T11:00:00+08:00
version: "1.1"
game_version: "v1.1.0"
category: reference
breadcrumb: Resource Tree
tested: "All recipes verified against v1.1.1.0 tooltips."
---

{{< diagram src="resource-processing-tree-overview.svg" caption="Complete resource processing tree from raw ores through intermediate products to finished endgame components. Rows grouped by mining source: Asteroid Minerals, Gas Extraction, Exo-Planet Ops, and Crafted Components." >}}

## The Full Processing Chain at a Glance

Outworld Station's resource system has four mining sources and two intermediate stages before final components. Understanding the chain prevents building the wrong infrastructure. I spent two hours building a Titanium plate line before realizing I needed a different smelter type.

This is a reference page. For specific production line builds, see [Smelting Guide](/guides/automated-smelter-refinery-design/) and [Chemical Processing Guide](/guides/chemical-processing-refining-chain/).

{{< callout type="verdict" title="TL;DR" >}}
Four raw sources: Asteroids (ores + ice), Gas Giants (gas), Containment Asteroids (mixed), Exo-Planet surfaces (rare). Ores →Smelters →Ingots →Assemblers →Components. Gases →Chemical Processors →Compounds. Three endgame materials bottleneck everything: Superalloy (Lv5+), Electronics (Lv6+), Nitronic Acid (Lv9+). Manage these three and you can build anything.
{{< /callout >}}

## Mining Sources

### Asteroid Mining (Level 1+)

| Resource | Source Node | Mining Method | Base Rate |
|----------|------------|---------------|-----------|
| Iron Ore | Common asteroid | Mining Drill | 18/min |
| Copper Ore | Common asteroid | Mining Drill | 15/min |
| Titanium Ore | Rare asteroid | Mining Drill | 6/min |
| Silicon Ore | Rare asteroid | Mining Drill | 8/min |
| Coal | Common asteroid | Mining Drill | 12/min |
| Ice | Any asteroid | Mining Drill | 20/min |

### Gas Giant Mining (Level 8+)

| Resource | Source | Mining Method | Base Rate |
|----------|--------|---------------|-----------|
| Hydrogen | Gas Giant | Gas Extractor | 5/min |
| Helium | Gas Giant | Gas Extractor | 3/min |
| Methane | Gas Giant | Gas Extractor | 4/min |
| Sulfur Vapor | Gas Giant | Gas Extractor | 2/min |

For gas setup details, see [Deep Space Gas Giant Mining Guide](/guides/deep-space-gas-giant-mining/).

### Containment Asteroid Mining (Level 13+, v1.1)

| Resource | Source | Rate | Best Use |
|----------|--------|------|----------|
| Nitrox | Gas Asteroid | 12/min + 8 H/min | v1.1 recipe changes |
| Titanium + Silicon | Mineral Asteroid | 8/min + 6/min | Superalloy supplement |
| Small output both | Mixed Asteroid | 5/min + 4/min | Skip (rates too low) |

See [Enhanced Containment Guide](/guides/enhanced-containment-guide/) for capture mechanics.

### Exo-Planet Surface Extraction (Level 15+)

| Resource | Planet Type | Rate | Market Value |
|----------|-------------|------|-------------|
| Exotic Matter | All types | 4-8/run | ~2,200 cr/unit |
| Helium-3 | Medium+ | 3-6/run | ~1,800 cr/unit |
| Quantum Dust | High+ | 1-3/run | ~5,000 cr/unit |
| Platinum | All types | 6-12/run | ~1,200 cr/unit |
| Dark Matter | Rich only | 3-7/run | ~12,000 cr/unit |

See [Exo-Planet Lifter Guide](/guides/exo-planet-lifter-guide/) for mission details.

## Smelting: Raw Ore to Ingots

| Input | Process | Output | Used In |
|-------|---------|--------|---------|
| 2 Iron Ore | Smelter | 1 Iron Ingot | Iron Plate, Steel, Basic parts |
| 2 Copper Ore | Smelter | 1 Copper Ingot | Wire, Electronics, Pipes |
| 3 Titanium Ore | Smelter | 1 Titanium Ingot | Superalloy, Advanced modules |
| 2 Silicon Ore | Smelter | 1 Silicon Wafer | Circuit Boards, Optics |
| 1 Coal | Smelter (burn) | Carbon Dust | Steel, Advanced Alloys |

## Assembly: Ingots to Components

| Input | Machine | Output | Used In |
|-------|---------|--------|---------|
| 1 Iron Ingot | Assembler | 2 Iron Plate | Basic construction, Turrets |
| 1 Copper Ingot | Assembler | 3 Copper Wire | Electronics, Circuit Boards |
| 2 Copper Wire + 1 Silicon | Assembler | 1 Circuit Board | Electronics, Computers |
| 1 Iron Plate + 1 Circuit Board | Assembler | 1 Electronics Module | Everything mid-game+ |
| 2 Iron Ingot + 1 Coal | Assembler | 1 Steel Ingot | Structural components |
| 1 Titanium + 1 Steel + 1 Carbon | Plasma Forge | 1 Superalloy | All Level 5+ buildings |

{{< callout type="info" title="Quick Tip" >}}
**Bottleneck warning:** Electronics Module production is the biggest gate in mid-game. One Assembler making Circuit Boards feeds roughly 2 Electronics Assemblers. If Electronics is slow, check your Copper Wire supply →?1 Copper Ingot only makes 3 Wire, but each Circuit Board needs 2 Wire.
{{< /callout >}}

## Chemical Processing: Gas to Compounds

| Input | Machine | Output | Used In |
|-------|---------|--------|---------|
| 3 Hydrogen + 1 Oxygen | Chemical Processor | 1 Water | Life support, Cooling |
| 2 Hydrogen + 1 Carbon | Chemical Processor | 1 Methane | Fuel, Plastic |
| 2 Methane + 1 Sulfur | Chemical Processor | 1 Nitronic Acid | Research, Advanced crafting |
| 3 Helium | Chemical Processor | 1 Helium-3 | Fusion, Endgame fuel |
| 2 Hydrogen + 1 Nitrogen | Chemical Processor | 1 Ammonia | Fertilizer, Organic processing |

For the full gas processing chain, see [Nitrox Gas Processing Guide](/guides/nitrox-gas-processing-guide/) and [Chemical Processing Guide](/guides/chemical-processing-refining-chain/).

## Endgame Components (Level 8+)

| Component | Recipe | Used In | Produced By |
|-----------|--------|---------|-------------|
| Steel Frame | 4 Steel Ingot + 2 Iron Plate | Ship hull, Station expansion | Assembler |
| Advanced Circuit | 2 Circuit Board + 1 Silicon Wafer | CPU Control, Advanced turrets | Assembler |
| Superalloy | 1 Titanium + 1 Steel + 1 Carbon Dust | Plasma Forge | Plasma Forge |
| Quantum Processor | 2 Advanced Circuit + 1 Quantum Dust | Endgame research, Space Elevator | Assembler |
| Antimatter Cell | 3 Hydrogen + 1 Methane + 1 Sulfur | Antimatter Power, Warp drives | Chemical Processor |
| Dark Matter Core | 2 Dark Matter + 1 Quantum Processor | Space Elevator | Assembler |
| Nano Composite | 1 Superalloy + 1 Nitronic Acid + 1 Platinum | Lv18+ modules | Plasma Forge |

{{< section >}}
## v1.1 Recipe Changes Summary

Three recipes changed in v1.1:

| Recipe | Old | New | Impact |
|--------|-----|-----|--------|
| Nitronic Acid | 1 Nitrox + 1 Acid | 2 Methane + 1 Sulfur | Gas asteroids still produce Nitrox but it is now primarily used for v1.1 Rocket Fuel. |
| Superalloy | 1 Titanium + 2 Steel | 1 Titanium + 1 Steel + 1 Carbon Dust | Slightly harder (needs Carbon Dust from coal burning). |
| Rocket Fuel | 3 Methane | 2 Nitrox + 1 Hydrogen | Now requires Containment asteroid gas output. |

See [v1.1 Recipe Changes Guide](/guides/v1-1-recipe-changes-guide/) for full details.

{{< /section >}}

## Processing Reference Card (Quick Print)

```
IRON:     Mine →Smelter (2:1) →Ingot →Assembler →Iron Plate →Buildings/Turrets
COPPER:   Mine →Smelter (2:1) →Ingot →Assembler (1:3) →Wire →Circuit Board
SILICON:  Mine →Smelter (2:1) →Wafer →Circuit Board + Advanced Circuit
TITANIUM: Mine →Smelter (3:1) →Ingot →Plasma Forge →Superalloy
COAL:     Mine →Smelter (burn) →Carbon Dust →Steel + Superalloy

GASES:
HYDROGEN: Gas Giant →H + O = Water | H + C = Methane
HELIUM:   Gas Giant →3 He = Helium-3
METHANE:  Chemical (2H+C) →+ Sulfur = Nitronic Acid
SULFUR:   Gas Giant →Nitronic Acid (through Methane)

ENDGAME LOOP:
Ores →Ingots →Components →Superalloy + Electronics →Everything
```

{{< callout type="info" title="Community Verification" >}}
All ratios confirmed on v1.1.1.0. Recipe changes from Steam patch notes. v1.1 recipe list confirmed via in-game tooltips. Base rates are un-upgraded →?Mining Efficiency and Advanced Smelting research improves throughput by 30-60%.
{{< /callout >}}
