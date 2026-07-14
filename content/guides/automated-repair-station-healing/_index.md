---
title: "Automated Repair & Station Self-Healing - Never Fix a Module by Hand Again"
description: "Outworld Station automated repair systems, repair drone networks, and self-healing module setups. Let your station fix itself while you explore."
date: 2026-06-05
publishedAt: 2026-06-18T13:15:00+08:00
publishDate: 2026-06-09T21:40:00+08:00
hidden: false
breadcrumb: Auto Repair
lastmod: 2026-06-05
draft: false
category: defense
version: 1.0.0.2
---

## Your Station Gets Hit. Now You Spend 20 Minutes Running Repairs.

A raid hits your mining wing. Three modules at 30% health. You spend 15 minutes running between them with a repair tool, manually fixing each one. Meanwhile, your main assembler line shut down 8 minutes ago. Production loss: 400 iron plates, 200 circuits, 3 research cycles.

Manual repair is a waste of your time. A simple automated repair network handles everything in under 2 minutes with zero player involvement.

## Quick-Fix: The 3-Item Auto-Repair Kit

> **Build these three things to automate repairs:**
> 1. 1 Repair Hub - placed in the center of your station
> 2. 3 Repair Drones - assigned to the hub (each drone handles 4-5 modules)
> 3. 1 Parts Chest - filled with 50 iron plates, 20 circuits, 10 repair kits
> 
> **Setup time:** 10 minutes. **Repair speed:** A fully damaged module restored in 45 seconds.

{{< diagram "auto-repair-system.svg" >}}

## Repair System Components

| Component | Cost | Range | Repair Rate | Best Placement |
|-----------|:----:|:-----:|:-----------:|:--------------:|
| Repair Hub | 200 Iron, 50 Circuits | 30 tiles | Command center | Station center |
| Repair Drone Mk1 | 50 Iron, 20 Circuits | 20 tiles | 5 HP/sec | Per module cluster |
| Repair Drone Mk2 | 100 Steel, 40 Circuits | 35 tiles | 12 HP/sec | Perimeter modules |
| Parts Chest | 20 Iron | Inventory | Auto-refill | Next to repair hub |
| Shield Link | 30 Steel, 10 Circuits | 15 tiles | Shield repair | Exposed modules |

## Setting Up Auto-Repair

### Step 1: Place the Repair Hub

Center of your station, within 30 tiles of all critical modules. If your station is larger than 60 tiles across, build two hubs.

### Step 2: Deploy Repair Drones

One Mk1 drone per 4 modules or one Mk2 drone per 6 modules. Drones patrol their assigned zone and auto-detect damaged modules.

| Station Size | Modules | Drones Needed | Parts Consumption/Hour |
|:------------:|:-------:|:-------------:|:----------------------:|
| Small | 8-12 | 2 Mk1 | 5 iron, 2 circuits |
| Medium | 15-25 | 3 Mk1 + 1 Mk2 | 15 iron, 5 circuits |
| Large | 30-50 | 2 Mk1 + 3 Mk2 | 30 iron, 10 circuits |
| Mega | 60+ | 4 Mk2 per hub | 50 iron, 20 circuits |

### Step 3: Stock the Parts Chest

Link the parts chest to your main iron and circuit supply via Inventory Pair. Set a restock threshold: when parts drop below 20, request a resupply of 50.

### Step 4: Set Up Shield Links

Place Shield Links on modules that face raid directions. Links auto-consume repair parts to maintain shields, reducing damage taken by 40%.

## Real Scenario: Three-Wave Raid With No Manual Repair

A three-wave pirate raid hit my medium station. 18 modules took damage averaging 35%. Without auto-repair, I would have spent 30 minutes fixing everything manually.

**The result:** 4 Mk1 drones and 1 Mk2 drone repaired all damage in 3 minutes. I stayed in the research menu the entire time. Parts consumption: 22 iron plates, 8 circuits. Parts restock drone arrived 2 minutes later.

## FAQ

**Q: Do repair drones use fuel?**

Mk1 drones use 1 power cell per 5 repairs. Mk2 drones use 1 per 3 repairs. Keep 20 power cells in the parts chest.

**Q: Can drones repair each other?**

No. If a drone is destroyed, build a replacement from the Repair Hub. The hub holds a backup drone blueprint.

**Q: Does auto-repair work during combat?**

Yes. Repair drones prioritize modules under active attack. A drone repairing a module under fire takes 15% damage per repair cycle - replace it after 6 combat repairs.

### External Resources

- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)
- [r/OutworldStationGame on Reddit](https://reddit.com/r/OutworldStationGame/)
- [Drone Defense Guide](/guides/drone-defense-guide/) - Stop attacks before they happen
- [Ship Building Guide](/guides/ship-building/) - Build repair ships for deep space

