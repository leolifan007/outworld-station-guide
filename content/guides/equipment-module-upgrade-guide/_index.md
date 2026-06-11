---
title: "Equipment & Module Upgrade Guide -- Tech Upgrade Priority That Actually Works"
description: "Outworld Station equipment system, tech upgrade rework, module priority optimization for drones, and the upgrade order that doubles your production without wasting Tech Points."
date: 2026-06-09
lastmod: 2026-06-09T22:30:00+08:00
draft: false
hidden: true
publishDate: 2026-06-13T10:00:00+08:00
category: economy
version: 1.0.0.0
breadcrumb: Equipment
emoji: Gear
---

## You Have Tech Points. You Have No Idea What to Spend Them On.

The Tech Upgrades system (added in v0.1.2.5, reworked for 1.0) gives you Tech Points from station leveling and artifact caches. Spend them in the wrong order and you end up with a +5% mining speed boost when you desperately needed drone cargo capacity. Tech Points do not reset. There is no respec.

The Equipment Station lets you craft gear that boosts your drones. The Module Priority system decides what your buildings work on first. Both systems are easy to ignore until you hit Level 8 and realize your drones are making 15-second round trips with 2 items at a time.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Drone cargo upgrades first (doubles your effective logistics). Equipment crafting second (quadruple-when-you-need-it boosts). Building module priority third (fixes bottlenecks). Tech upgrades that boost production per building are a trap -- they cost too many points for too little gain early on.</p>
</div>

## Quick-Fix: Upgrade Priority Table

| Priority | Upgrade | Tech Points Cost | Effect | When |
|:--------:|---------|:----------------:|--------|:----:|
| 1 | Drone Cargo Capacity | 3-5 per rank | 2x-3x items per trip | Level 5+ |
| 2 | HUB Upgrade (Slots) | 5 per rank | +2 drone slots | Level 6+ |
| 3 | Equipment Station Unlock | 8 | Enables drone equipment | Level 7+ |
| 4 | Drone Speed | 3 per rank | -30% travel time | Level 8+ |
| 5 | Station Module Priority | 5 | Fine-tune production | Level 9+ |

**Rule of thumb:** Logistics upgrades before production upgrades. A faster drone carries more stuff and serves more buildings. A slightly faster Smelter only helps one building.

{{< diagram "equipment-module-flow.svg" >}}

## The Equipment System

The Equipment Station (unlocked around Level 7) lets you craft equipment pieces that slot into your drones. Think of it as gear for your automated workforce.

### Equipment Types

| Equipment | Materials | Effect | Best Use |
|-----------|-----------|--------|----------|
| Cargo Expander | Electronics + Alloy | +50% drone carry capacity | All-purpose, build first |
| Speed Thruster | Fuel + Circuits | +40% drone movement speed | Long-distance routes |
| Shield Module | Superalloy + Electronics | Drone immune to minor hazards | Hazard zone routes |
| Repair Kit | Hull Parts + Circuits | Drone self-repairs 2 HP/sec | Combat zones |
| Scanner Array | Advanced Circuits + Crystals | +100% resource scan radius | Exploration drones |

### Crafting Priority

1. **Cargo Expander x2** -- Two equipped drones carry as much as five unequipped ones
2. **Speed Thruster x1** -- For your long-haul freighter drone
3. **Repair Kit x1** -- For the drone running through combat zones
4. **Shield Module x1** -- For hazard-area supply routes

<div class="callout callout-tip">
  <h4>Equipment Station Placement</h4>
  <p>Put your Equipment Station next to your Drone Hub. Equipment must be physically transferred to drones via the Hub interface. Dragging crafted equipment across a sprawling station eats more time than the crafting itself.</p>
</div>

## Tech Upgrade System (v0.1.2.5+)

Tech Points are earned from:
- Station Level progression (+2-5 per level)
- Artifact caches found on planets (+1-3 per cache)
- Void exploration rewards (+5-10 rare)

### The Three Tech Trees

| Tree | Focus | Best Upgrades | Total Points |
|------|-------|---------------|:-----------:|
| Drone Tech | Cargo, Speed, Shield, Count | Cargo Rank 2 > Speed Rank 1 > Count | ~25 |
| Equipment Tech | Crafting unlocks, Equipment quality | Station unlock > Quality Rank 1 | ~15 |
| Station Tech | Building speed, Module priority, HUB slots | HUB Slots > Priority System > Output speed | ~20 |

### Recommended Point Allocation (Total ~60)

1. **Cargo Capacity Rank 2** (8 points) -- doubles logistics throughput
2. **HUB Slot Upgrade** (5 points) -- +2 drone slots = more coverage
3. **Equipment Station Unlock** (8 points) -- enables equipment crafting
4. **Drone Speed Rank 1** (3 points) -- faster routes
5. **Station Module Priority** (5 points) -- fixes production bottlenecks
6. **Cargo Capacity Rank 3** (5 points) -- 3x base capacity
7. **Equipment Quality Rank 1** (5 points) -- better crafted equipment
8. **Remaining** -- situational picks

## Module Priority System

The reworked Module Priority system (v0.1.2.6) lets you control what each building produces first when it has multiple recipes.

### How It Works

| Setting | Behavior | Example |
|---------|----------|---------|
| High Priority | Building skips all other recipes until this one is done | Smelter: prioritize Superalloy |
| Normal | Default, balanced across assigned recipes | Default |
| Low Priority | Only crafts when nothing else is queued | Refinery: backup Oxygen |

### When to Use Priority

- **Set Smelters to High Priority for Superalloy** once you unlock it -- you always need more
- **Set Assemblers to High Priority for Hull Parts** during station expansion
- **Set Refineries to Low Priority for anything not critical** (e.g., backup gas types)
- **Leave Crafting Stations on Normal** unless you have a specific bottleneck

<div class="callout callout-warning">
  <h4>The Priority Stacking Bug</h4>
  <p>If you set every building in a production line to High Priority, they all compete for the same resources and the system creates deadlocks. Only set the <strong>output building</strong> to High Priority. Leave input buildings on Normal. For example: set the Assembler (output) to High, not the Smelter feeding it.</p>
</div>

## Real Scenario: The Drone That Could Not Carry Enough

At Level 7, I had three drones serving 12 buildings across two wings. Each round trip took 12 seconds but carried only 3-4 items. Half my Smelters were idle waiting for materials while the drones were constantly in transit.

**The fix:** I spent 8 Tech Points on Cargo Capacity Rank 2, unlocking carry capacity of 10 items per trip. Then I crafted two Cargo Expanders at the Equipment Station for my busiest drones. Trip count per minute went from 5 to 2, effective throughput went from 15 items/min to 35 items/min. Same drones, same routes. Just proper upgrades.

For production stacking strategies, see our [Assembly Line Ratios Guide](/guides/assembly-line-ratios/). For drone network optimization, see the [Cargo Drone Network Guide](/guides/cargo-drone-network/).

## Community Resources

- [Steam Guides](https://steamcommunity.com/app/3242950/guides/) _(opens in new tab)_
- [Outworld Station on Reddit](https://www.reddit.com/r/IndieGaming/comments/1ijv6yx/check_out_my_new_space_factory_game_outworld/) _(opens in new tab)_

