---
title: "Outworld Station Matter Printer Advanced Blueprints - Factory Blueprinting for Mass Production"
description: "Outworld Station matter printer advanced usage including multi-blueprint chaining, parameterized blueprints, hotbar management for 50+ blueprints, and sharing blueprints between saves."
date: 2026-07-13
publishedAt: 2026-07-13T10:00:00+08:00
breadcrumb: Advanced Blueprints
version: "1.1"
game_version: "v1.1.0"
lastmod: 2026-07-14
draft: false
category: reference
tested: "Blueprint library of 40+ templates across 4 hotbars at Station Level 10."
---

    ## You Have 500 Blueprints but Can Only Find 3

    You discovered the Matter Printer. You saved every build you made as a blueprint. Now you have 47 blueprints scattered across 4 pages of the menu and you cannot find the one for "Smelter + Buffer + Assembler" that you built last week.

    The Matter Printer is the most powerful tool in Outworld Station for scaling production. But without proper organization, your blueprint library becomes useless. This guide covers naming conventions, hotbar management, parameterized blueprints, and the blueprint chaining workflow.

    <div class="callout callout-verdict">
      <h4>The Short Version</h4>
      <p>Use a consistent naming scheme: [Type]-[Input]-[Output]-[Size]. Example: "SML-ORE-IN60" for a Smelter taking 60 ore/min. Assign hotbars by category: Hotbar 1=Production, 2=Power, 3=Logistics, 4=Defense. Parameterized blueprints let you change input/output quantities without rebuilding.</p>
    </div>

    {{< callout "info" >}}**v1.1:** The Matter Printer now upgrades to Mk2 and Mk3. Higher tiers print larger and more complex blueprints, and v1.1 also raises the Blueprint area limit and object cap station-wide — so blueprints that were too big to save before are now valid.{{< /callout >}}

    <hr>

    ## v1.1 Mk2/Mk3 Matter Printer and Bigger Blueprints

    v1.1 turns the Matter Printer into a tiered building. Mk2 and Mk3 raise both the size of blueprint you can author and the speed at which it prints, while v1.1 also increases the global Blueprint area limit and object cap.

    ### Blueprint Capability by Printer Tier

    | Printer Tier | Max Blueprint Area | Object Cap | Print Speed | Notes |
    |:-----------:|:------------------:|:----------:|:-----------:|-------|
    | Mk1 | Baseline | Baseline | Baseline | Starting tier |
    | Mk2 | Larger | Higher | Faster | Bigger blueprints, quicker prints |
    | Mk3 | Largest | Highest | Fastest | Most complex/large builds |

    **What this unlocks:**
    - Multi-stage chain blueprints (e.g. the full Superalloy line) in a single template instead of several chained steps.
    - Larger building footprints — room for buffers, redundancy, and routing you had to leave out before.
    - Faster reprinting when iterating on a design, so version control (the [V2] naming tip above) costs less time.

    **Combine with the area/cap increase:** Even at Mk1, the v1.1 Blueprint area limit and object cap increase lets you save bigger designs than before. Upgrading the printer compounds that with faster, larger-capability printing.

    **See also:** [Mk2/Mk3 Factory Guide](/guides/mk2-mk3-factory-guide/) for the full tier list and build-cost tradeoffs across all nine upgradeable buildings.

    <hr>

    <details class="md-fold">
    <summary><span>Naming Convention That Works</span><span class="fold-toggle">[+]</span></summary>

    <div class="fold-body">

    ### Blueprint Naming

    **Format:** `[Abbreviation]-[Input Material]-[Output Rate]`

    | Blueprint | Abbreviation | Example Name |
    |-----------|:-----------:|-------------|
    | Smelter line | SML | SML-ORE-IN60 (60 iron/min) |
    | Assembler line | ASM | ASM-PLATE-CIRCUIT (plate -> circuit) |
    | Power setup | PWR | PWR-H2-200KW (200kW hydrogen) |
    | Defense grid | DEF | DEF-LASER-TRI (triangle laser setup) |
| Storage | STO | STO-IRON-1K (1000 iron capacity) |
    | Drone bay | DRN | DRN-4CARGO (4 cargo drone hub) |

    **Tags to add after the name:**
    - `[V1]` = Version 1 (old design, may be obsolete)
    - `[OPT]` = Optimized for space
    - `[MAX]` = Maximum throughput
    - `[T1]` = Requires Tier 1 buildings

    </div></details>

    <hr>

    <details class="md-fold">
    <summary><span>Hotbar Organization for 50+ Blueprints</span><span class="fold-toggle">[+]</span></summary>

    <div class="fold-body">

    ### The 4-Hotbar System

    **Hotbar 1 - Production (12 slots)**
    | Slot | Blueprint |
    |:----:|----------|
    | 1 | SML-ORE-IN60 (Basic smelter) |
    | 2 | SML-ORE-IN120 (T2 smelter) |
    | 3 | ASM-CIRCUIT (Circuit assembly) |
    | 4 | ASM-ELECTRONIC (Electronics assembly) |
    | 5 | ASM-SUPERALLOY (Superalloy forge) |
    | 6 | SML-REFINERY (Chemical refinery) |
    | 7-12 | Custom production blueprints |

    **Hotbar 2 - Power (12 slots)**
    | Slot | Blueprint |
    |:----:|----------|
    | 1 | PWR-SOLAR-3 (3 panel array) |
    | 2 | PWR-BATTERY (Battery bank) |
    | 3 | PWR-H2-200KW (Hydrogen gen) |
    | 4 | PWR-FUSION (Fusion reactor) |
    | 5 | PWR-GRID-ZONED (Zoned breaker layout) |
    | 6-12 | Custom power |

    **Hotbar 3 - Logistics (12 slots)**
    | Slot | Blueprint |
    |:----:|----------|
    | 1 | STO-IRON-1K |
    | 2 | STO-MIXED (Multi-material) |
    | 3 | DRN-4CARGO |
    | 4 | DRN-2REPAIR |
    | 5 | PIPE-LINEAR (Pipe layout) |
    | 6 | PIPE-LOOP (Loop layout) |
    | 7-12 | Custom logistics |

    **Hotbar 4 - Defense & Misc (12 slots)**
    | Slot | Blueprint |
    |:----:|----------|
    | 1 | DEF-LASER-PAIR |
    | 2 | DEF-MISSILE-PAIR |
    | 3 | DEF-TRIANGLE (Full triangle layout) |
    | 4 | BLDG-CORE (Station core setup) |
    | 5 | BLDG-RESEARCH (Research cluster) |
    | 6 | BLDG-SHIPYARD |
    | 7-12 | Custom builds |

    </div></details>

    <hr>

    <details class="md-fold">
    <summary><span>Blueprint Chaining - Build an Entire Line in One Click</span><span class="fold-toggle">[+]</span></summary>

    <div class="fold-body">

    ### How Chaining Works

    A "chained build" is a blueprint that includes the Matter Printer itself. When placed, you can print the next blueprint in the chain immediately.

    **Example: Full Superalloy Production Chain**
    1. Place "SML-TITANIUM" (smelter for titanium)
    2. Place "SML-TUNGSTEN" (smelter for tungsten)
    3. Place "FORGE-SUPERALLOY-BUFFER" (forge + input/output buffers)
    4. Place "STO-SUPERALLOY-500" (output storage)
    5. Place "DRN-SUPERALLOY-OUT" (drone route to main storage)

    **As a chain blueprint:** "CHAIN-SUPERALLOY-FULL" contains all 5 steps. Place once, and the Matter Printer queues each sub-blueprint automatically.

    </div></details>

    <hr>

    ## Blueprint Management Tips

    - **Export to file:** Blueprints can be exported as .osb files. Keep a backup in a folder on your desktop.
    - **Share with friends:** OSB files are text-based and small (2-10KB). Email them or share via Discord.
    - **Version control:** When you improve a blueprint, save it as [NAME]V2 rather than overwriting the original. You might need the old version for lower-tier stations.
    - **Clean up regularly:** Delete unused blueprints. A cluttered library slows down the Matter Printer UI.

    <hr>

    ### Related Guides
    - [Matter Printer and Blueprint System](/guides/matter-printer-blueprint-guide/)
    - [Assembly Line Ratios](/guides/assembly-line-ratios/)
    - [Station Expansion Blueprint](/guides/station-expansion-blueprint/)
