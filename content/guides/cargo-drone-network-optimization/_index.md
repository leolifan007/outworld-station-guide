---
title: "Cargo Drone Network Optimization - Speed Up Cross-Station Deliveries"
description: "Outworld Station cargo drone pathing, congestion fixes, and network topology design. Real throughput numbers for 10 to 50 drone networks."
date: 2026-06-05
emoji: 🚁
lastmod: 2026-06-07T19:15:31+08:00
draft: false
category: logistics
version: 1.0.0.2

---

## Your Drone Network Is Slower Than It Should Be

You built 20 cargo drones. They fly in straight lines. Yet items take forever to arrive and your assemblers keep going idle. The problem is not enough drones - it's how you placed your hubs and how you paired them.

If your drone path crosses the same module five times on one delivery, you are losing 40% of your effective throughput. Here is the fix.

## Quick-Fix: The Hub-and-Spoke Rule

> **The fix in one layout change:**
> Place one central Cargo Hub per station cluster. Every module pairs _to the hub_, not to each other. Drones fly Hub-to-Module or Module-to-Hub. Never Module-to-Module across the station.
> 
> **Throughput gain:** 2.5x on a 15-drone network, measured at Station Level 8.

{{< diagram "cargo-drone-network.svg" >}}

## Why Drones Get Slow

Cargo drones in Outworld Station use direct point-to-point routing by default. If Module A needs iron plates from Module B, the drone draws a straight line. This sounds efficient until you have more than 5 active pairs:

| Network Size | Direct Pairing Delay | Hub-and-Spoke Delay | Gain |
|-------------|---------------------|-------------------|:----:|
| 5 drones | 8 sec avg | 6 sec avg | 25% |
| 15 drones | 22 sec avg | 9 sec avg | 59% |
| 30 drones | 47 sec avg | 14 sec avg | 70% |
| 50 drones | 89 sec avg | 22 sec avg | 75% |

The delay compounds because drones queue at congested module ports. A hub spreads the queue across 6-8 dedicated ports.

## Three Network Topologies

### 1. Hub-and-Spoke (Recommended)

One central Cargo Hub per station level. All modules connect to it. Drones only fly hub-to-module routes.

**Best for:** Mid-game stations with 10-25 modules.

### 2. Ring Network

Modules connect in a circular chain. Drones pass items clockwise or counter-clockwise.

**Best for:** Compact stations where modules are already in a ring layout.

### 3. Full Mesh

Every module connects to every other module.

**Best for:** Late-game stations with 50+ drones and dedicated drone ports per module. High throughput but high lag.

| Topology | Setup Time | Drone Efficiency | Scalability | Best For |
|---------|:----------:|:----------------:|:-----------:|----------|
| Hub-and-Spoke | Low | High | High | Mid-game |
| Ring | Medium | Medium | Medium | Compact layouts |
| Full Mesh | High | Very High | Low | Late-game |

## Real Scenario: Station Level 10 Bottleneck

I had 22 drones delivering iron, copper, and superalloy across 12 modules. Items took 35-50 seconds to arrive. Assemblers ran at 60% uptime.

**The fix:** Built one Cargo Hub in the center of the station. Re-paired all 12 modules to the hub. Removed 15 direct pairs. New delivery time: 9-14 seconds. Assembler uptime: 94%.

## FAQ

**Q: How many drones per hub?**

Start with 10. Add 5 more per additional 8 modules. If drones are waiting at the hub, add more. If they queue at a module, check its output buffer.

**Q: Do drone speed upgrades help?**

Yes. Each speed upgrade cuts delivery time by roughly 15%. First upgrade is the most impactful.

**Q: Can I use multiple hubs?**

Yes. Build one hub per station level or per wing. Connect hubs with a single high-priority route.

### External Resources

- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)
- [r/OutworldStationGame on Reddit](https://reddit.com/r/OutworldStationGame/)
- [Inventory Pairing Guide](/guides/advanced-inventory-pairing/) - Pair your hubs for maximum efficiency
