---
title: "Advanced Inventory Pairing - Master Supply & Demand Automation"
description: "Outworld Station advanced inventory pairing techniques for complex supply chains. Auto-balance your factory with zero manual intervention."
date: 2026-06-05
publishDate: 2026-06-09T21:40:00+08:00
hidden: false
breadcrumb: Auto Logistics
emoji: "📦"
lastmod: 2026-06-05
draft: false
category: logistics
version: 1.0.0.2
---

## Your Factory Is Starving in Some Places and Overfed in Others

You set up inventory pairs everywhere. Iron plates go from the smelter to the assembler. Copper goes from the refinery to the circuit maker. But somehow your circuit assembler is idle while your plate storage has 3000 items piling up.

The problem is not enough pairs. It is the wrong pairs, or pairs fighting each other.

## Quick-Fix: The Demand-First Pairing Rule

> **Always pair from demand to supply, never supply to demand.**
> 
> Set up the pair at the consuming module: "I need iron plates from the nearest source." Not at the smelter: "I output iron plates, find someone to take them."
> 
> Demand-driven pairs auto-balance. Supply-driven pairs flood the nearest consumer and starve the rest.

{{< diagram "inventory-pairing-flow.svg" >}}

## Pairing Patterns Compared

| Pattern | Setup | Balance | Best For | Failure Mode |
|---------|:-----:|:-------:|----------|:------------:|
| Demand-First | Medium | Auto | All mid-game stations | Rare (resource depletion) |
| Supply-First | Easy | Poor | Single consumer chains | Consumer flooding |
| Priority-Chained | Hard | Excellent | Late-game megafactories | Complex setup |
| Buffer-Mediated | Medium | Good | High-throughput lines | Extra space needed |

## Three Advanced Pairing Techniques

### 1. Priority Chaining

Assign priority levels to your consumers. High priority (life support, research) gets first dibs on supply. Low priority (decorations, backups) gets whatever is left.

```
Priority 1: Oxygen generators, Research lab
Priority 2: Assemblers, Smelters
Priority 3: Component storage, Backup fabricators
```

### 2. Buffer-Mediated Pairing

Place a small buffer chest (200-500 units) between supply and demand. The buffer absorbs demand spikes and prevents supply lines from being overwhelmed.

| Component | Buffer Size | Refill Threshold | Refill Amount |
|-----------|:-----------:|:----------------:|:-------------:|
| Iron Plate | 500 | < 200 | 300 |
| Copper Ingot | 400 | < 150 | 250 |
| Circuit Array | 200 | < 80 | 120 |
| Superalloy | 100 | < 30 | 70 |

### 3. Overflow Routing

Route excess supply to a secondary consumer instead of letting it pile up. If iron plates exceed buffer capacity, overflow them to component manufacturing or storage.

## Real Scenario: The 8-Assembler Cascade Stall

Eight assemblers each had their own iron plate pair from the same smelter line. The nearest assembler got 500 plates, starving the farthest. Only 3 of 8 assemblers ran at any time.

**The fix:** Introduced one central iron buffer (500 plates) and changed all 8 assemblers to pull from the buffer. All 8 assemblers ran at 95% uptime. Total throughput tripled.

## FAQ

**Q: How many inventory pairs is too many?**

A single Cargo Hub handles 10-15 pairs efficiently. Beyond that, add a second hub. Each hub+drone cluster supports about 20 active routes.

**Q: Do priority pairs reset after a power outage?**

Yes. After a grid restart, all pairs re-establish. Priority pairs reconnect fastest because they get first drone dispatch. Add 2-3 minutes for full recovery.

**Q: Can I pair between stations on different planets?**

Yes, but only through a wormhole or freighter route. Use a local hub on each planet and pair the hubs through the wormhole terminal.

### External Resources

- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)
- [r/OutworldStationGame on Reddit](https://reddit.com/r/OutworldStationGame/)
- [Cargo Drone Guide](/guides/cargo-drone-network-optimization/) - Drone routing for your pairs
- [Wormhole Guide](/guides/wormhole-terminal-guide/) - Cross-planet pairing
