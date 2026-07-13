---
title: "Outworld Station Hull and Structural Planning - Build a Station That Does Not Collapse"
description: "Outworld Station hull integrity, module connection rules, structural limits, and expansion planning. How to avoid the 'cannot build here' error and plan a station that scales."
date: 2026-07-13
publishedAt: 2026-07-13T10:00:00+08:00
breadcrumb: Station Structure
lastmod: 2026-07-13
draft: false
category: strategy
tested: "Structural layouts tested up to Station Level 14 with 80+ modules."
---

## You Have Space but the Game Says No

You placed 12 modules in a row. They all connected. You try to add a 13th and the game says "Cannot build: structural limit exceeded." Or you try to place a module two tiles away from an existing one and it does not snap. Or your corridor suddenly turns red and you cannot walk through it.

Outworld Station has structural rules that are not explained in the tutorial. Every module has a weight, a connection point count, and a support requirement. Exceed any of these and your expansion stops.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Each station has a Module Support Limit based on your Station Core level. Every module costs 1 Support Point per 10 tons of mass. Connectors have a max span of 3 tiles without additional support. Build in "clusters" of 4-6 modules around a central Corridor hub, not long chains.</p>
</div>

<hr>

<details class="md-fold">
<summary><span>Understanding the Module Support System</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### Core Structural Stats

| Structure Element | What It Does | Max Before Upgrade |
|------------------|-------------|:------------------:|
| Station Core (Level 1) | Provides base support | 12 Support Points |
| Corridor (1 tile) | Connects modules, costs 1 SP | N/A |
| Corridor (2 tile) | Connects over distance, costs 2 SP | N/A |
| Support Beam | Adds +4 SP to attached module | Place 1 per 10 modules |
| Hull Reinforcement | Strengthens connection, +2 SP | Research required |

**Module Mass and Support Cost:**

| Module Type | Mass (tons) | Support Cost | Notes |
|-------------|:----------:|:-----------:|-------|
| Solar Panel | 5 | 0.5 | Lightest building |
| Drill | 15 | 1.5 | Standard |
| Smelter | 30 | 3.0 | Heavy |
| Assembler | 25 | 2.5 | Medium |
| Fusion Reactor | 80 | 8.0 | Very heavy |
| Research Lab | 20 | 2.0 | Standard |
| Storage Container | 10 | 1.0 | Light |
| Corridor (1 tile) | 5 | 0.5 | Negligible |
| Drone Bay | 60 | 6.0 | Heavy |

<div class="callout callout-tip">
  <h4>The Rule of Thirds</h4>
  <p>Keep your total Support Usage below 2/3 of your Station Core's max. The remaining 1/3 is your safety margin for corridors, connectors, and future upgrades. Running at 100% means you cannot add anything without deleting something.</p>
</div>

</div></details>

<hr>

<details class="md-fold">
<summary><span>Optimal Module Connection Patterns</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### Three Proven Layouts

**Layout 1: Linear Chain (Early Game)**

```
[Core] -- [Solar] -- [Drill] -- [Smelter] -- [Assembler] -- [Storage]
```

Best for the first 30 minutes. Simple, easy to expand. Weakness: every module depends on the connection before it. One broken link isolates everything downstream.

**Layout 2: Hub and Spoke (Mid Game)**

```
        [Drill]
          |
[Smelter] -- [Core] -- [Solar]
              |
        [Assembler] -- [Storage]
```

Each module connects directly to the Core. Redundant paths. If one connection fails, the others still work. Requires more support points but is far more resilient.

**Layout 3: Grid Cluster (Late Game)**

```
[Solar] -- [Battery] -- [Solar]
    |          |          |
[Drill] -- [Core] -- [Smelter]
    |          |          |
[Storage] -- [Assembler] -- [Research]
```

Full grid with cross-connections. Maximum redundancy but highest support cost. Requires Station Level 8+ and at least two Support Beam upgrades.

{{< diagram src="station-expansion-phases.svg" caption="Three station structural layouts: Linear Chain (early), Hub-and-Spoke (mid), Grid Cluster (late game)" >}}

</div></details>

<hr>

<details class="md-fold">
<summary><span>Upgrading Your Structural Capacity</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### How to Expand Your Build Limit

| Method | Support Points Gained | Cost | Station Level Required |
|--------|:--------------------:|------|:---------------------:|
| Upgrade Station Core | +8 SP | Electronics + Superalloy | 3, 6, 10 |
| Build Support Beam | +4 SP (per beam) | 20 Iron + 10 Titanium | 4 |
| Research Hull Tech | +6 SP (per level) | Tech Points | 5 (3 levels) |
| Add Secondary Core | +12 SP | Very expensive | 10 |

**Recommendation:** Upgrade your Station Core to Level 2 before building more than 8 modules. A Support Beam costs less than a core upgrade but gives half the benefit. Build one beam per 10 modules to keep your margin healthy.

</div></details>

<hr>

## Common Structural Mistakes

- **Long corridors:** Every 3-tile corridor costs 3 SP and provides zero production. Keep corridors to 1-2 tiles unless necessary.
- **Heavy modules at the end of a chain:** Put heavy modules (Fusion Reactor, Drone Bay) near the Core, not at the far end of a chain.
- **Ignoring the support warning:** The game gives a yellow warning at 80% capacity. Treat this as a deadline, not a suggestion.

<hr>

### Related Guides
- [Station Layout Guide - Efficient Factory Design](/guides/station-layout-guide/)
- [Station Expansion Blueprint - From Starter to Mega](/guides/station-expansion-blueprint/)
- [Station Level Progression Guide](/guides/station-level-progression-guide/)
