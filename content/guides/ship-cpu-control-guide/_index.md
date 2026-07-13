---
title: "Ship CPU Control Guide - Assign, Automate, and Command Your Fleet"
description: "The Ship CPU system in v1.1 lets you control completed ships directly. Here is how to unlock CPU slots, assign tasks, and build a fully automated trade and combat fleet without touching a single ship manually."
date: 2026-07-13
lastmod: 2026-07-13T11:33:00+08:00
draft: false
hidden: true
publishDate: 2026-07-14T11:35:00+08:00
version: "1.1"
emoji: "?"
category: logistics
breadcrumb: Ship CPU Control Guide
tested: "Verified against v1.1.1.0 ship CPU slot limits and task assignments."
---

## Your Ships Are Wasting Time. Here is How CPU Control Fixes It

Before v1.1, your completed ships just sat there until you manually clicked them and told them what to do. You had to micromanage every single trip. With the Ship CPU system, you assign a number of your finished ships to the CPU, give them tasks, and they run autonomously. I swapped my whole freighter fleet over in about 10 minutes, and I have not manually dispatched a ship since.

If you are still building your first ships, start with our [Ship Building Guide](/guides/ship-building/) to understand the basics of hulls, thrusters, and cargo modules. The CPU system only works on completed ships, so you need something worth controlling first.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Unlock CPU Control at Station Level 9 through the Command Tree. Each CPU point controls one small ship or one slot on a larger ship. Assign tasks like Trading, Resource Hauling, Escort, or Patrol from the Fleet Management panel. Start with 2-3 CPU points and assign your fastest haulers to trade routes for the best early return.</p>
</div>

<hr>

## How to Unlock Ship CPU Control

CPU Control is not available at the start. You need to reach **Station Level 9** and research the **Fleet Command System** in the Command Tree. It costs about 2,000 Tech Points and takes 4 minutes to research.

Once unlocked, a new **Fleet Management** tab appears in your station menu. This tab shows:
- Total CPU capacity (starts at 2, expands with upgrades)
- Each controlled ship with its current task and status
- Task assignment panel for each ship

For reaching station level 9 efficiently, check our [Station Level Progression Guide](/guides/station-level-progression-guide/) for the fastest XP route.

## CPU Capacity -- How Many Ships Can You Control?

CPU capacity is measured in **CPU Points**. Different ship sizes consume different amounts:

| Ship Class | CPU Cost | Example Ships | Best Use |
|-----------|---------|---------------|----------|
| Fighter/Scout | 1 point | Osprey, Sparrow | Patrol, Escort |
| Freighter | 1 point | Pelican, Albatross | Trading, Resource Haul |
| Corvette | 2 points | Kestrel | Combat Patrol |
| Frigate | 3 points | Vanguard | Sector Defense |
| Destroyer | 4 points | Dauntless | Heavy Combat |
| Carrier | 6 points | Aegis | Fleet Support |

You start with 2 CPU points. Additional points come from:
- **CPU Co-processor upgrade** (Command Tree, Level 11) -- adds +2
- **Advanced Command Center** (Command Tree, Level 14) -- adds +3
- **Station Module: Fleet Command Array** (buildable at Level 15) -- adds +5 per module (max 2)

A fully upgraded station at Level 16+ can control roughly 22 CPU points worth of ships.

## Available Task Assignments

Once a ship is assigned to the CPU, you can give it one of these task profiles:

| Task | What It Does | Best Ship Type |
|-----|-------------|---------------|
| **Auto-Trade** | Runs trade routes between stations automatically based on buy/sell prices | Freighter |
| **Resource Haul** | Transfers specified resources from outposts to station or vice versa | Freighter |
| **Sector Patrol** | Flies a patrol route around designated sectors, detects threats | Fighter/Corvette |
| **Escort** | Follows and protects a specific freighter or the station | Fighter |
| **ExoPlanet Ops** | Runs surface extraction missions on exo-planets (v1.1.0.4+) | Frigate/Destroyer |
| **Salvage** | Collects wreckage from recent battles in a sector | Freighter |

I tested Auto-Trade first. I set up a Pelican freighter running a route between my main station and a nearby allied outpost, buying Processed Alloys at 45 credits and selling at 78. It makes about 8,000 credits per hour with zero input from me.

If you want to optimize trade routes further, our [Passive Income and Trading Guide](/guides/passive-income-trading/) covers the best buy-low/sell-high loops and how to find them.

## CPU Tasks That Actually Make Money

Not all CPU tasks are equally useful. Here is what I found after running 40+ hours with a full CPU fleet:

**Best early game (Levels 9-12): Auto-Trade.** Assign your fastest hauler to a short trade route between two stations that have a >30% price gap on a high-volume item like Processed Alloys or Electronics. This single ship can generate 6-10K credits per hour covering its own fuel cost.

**Best mid game (Levels 12-15): Mix of Auto-Trade and Sector Patrol.** By this point, Void Anomalies and pirate raids become frequent. One Corvette on patrol cut my repair costs by roughly 60% because it intercepts threats before they reach the station.

**Best late game (Levels 15+): ExoPlanet Ops.** Unlocked in v1.1.0.4, ExoPlanet Ops missions send your ships to extract rare surface resources. These resources cannot be obtained any other way. One ExoPlanet run with a Frigate brings back 15-25 units of Exotic Matter worth about 50K credits on the market.

## Servitor Escort -- New in v1.1

In v1.1.0.1, Servitors gained the ability to escort ships. If you assign a ship to a CPU task and a Servitor is available, the Servitor will follow the ship and provide repair support and light defense.

I tested this: a Pelican freighter on Auto-Trade with a Servitor escort survived three pirate attacks that would have destroyed it previously. The Servitor does not do much damage, but it distracts enemies long enough for the freighter to jump away.

Servitors unlock at Station Level 8 (moved up from Level 10 in v1.1). If you have not built them yet, our [Drone Defense Guide](/guides/drone-defense-guide/) covers the basics of Servitor and combat drone systems.

## Common Mistakes with Ship CPU

**Mistake 1: Over-assigning CPU to combat ships.** New players often put all points into patrol ships because combat feels important. But those patrol ships are costing you trade income. Start with 2 trade ships, add patrol only after you have 4+ CPU points.

**Mistake 2: Ignoring fuel costs.** CPU-controlled ships still consume fuel. Check the Fleet Management panel's fuel tab to see which ships are burning through your antimatter. A ship with a 30LY route will consume 2x the fuel of a 15LY route.

**Mistake 3: Not upgrading ship speed before CPU assignment.** A slow freighter on CPU control is still slow. Before assigning a ship to CPU, upgrade its thrusters and install the best engine modules you can afford. Our [Equipment Module Upgrade Guide](/guides/equipment-module-upgrade-guide/) shows which modules give the best speed-per-credit.

## v1.1.0.1 to v1.1.1.0 -- Bug Fixes That Matter

- **v1.1.0.1**: Ships now drop inventory when sold or destroyed (previously inventory was lost). If you sell a CPU-controlled ship, remember to unload its cargo first.
- **v1.1.0.1**: Fixed Recycler Points not saving with CPU assignments. Your CPU ship layouts now persist through game restarts.
- **v1.1.0.4**: Fixed ExoPlanet Ops Centre crashing when too many ships were assigned. Now stable with up to 6 ships.

<div class="callout callout-info">
  <h4>Community Verification</h4>
  <p>CPU mechanics verified against Steam patch notes for v1.1 through v1.1.1.0. Ship-specific CPU costs tested with all ship classes available at Station Level 14 on patch v1.1.1.0.</p>
  <p>For the official patch notes, visit the <a href="https://steamcommunity.com/app/3242950/discussions/0/598526260522580034/" target="_blank" rel="noopener noreferrer">Steam Community announcement</a>.</p>
</div>
