---
title: "Defense and Combat Reference - Turrets, Ships, and Threat Ratings"
description: "Complete Outworld Station defense reference covering all turret types, ship weapon systems, enemy threat levels, and when each defense method is most effective."
date: 2026-07-14
lastmod: 2026-07-14T13:00:00+08:00
draft: false
hidden: true
publishDate: 2026-07-25T10:15:00+08:00
version: "1.1"
game_version: "v1.1.0"
category: defense
breadcrumb: Defense Reference
tested: "All threat ratings based on 30+ combat encounters on v1.1.1.0 from Level 3 through Level 18."
---

{{< diagram src="defense-combat-reference-overview.svg" caption="Defense reference overview showing enemy threat levels by station level, the three defense layers (Turrets, Ships, Station Hull), and recommended setups for each phase of the game." >}}

## The Three Layers of Station Defense

Station defense in Outworld Station works in three layers: Turrets (close range, automated), Ships (mid range, CPU-controlled patrols), and Hull (last resort, structural integrity). Each layer has specific tools and the right combination determines whether a wormhole invasion destroys your station or bounces off.

For turret placement diagrams, see [Weapons and Turret Placement Guide](/guides/weapons-turret-placement-guide/). For ship combat loadouts, see [Combat Ship Design Guide](/guides/combat-ship-design-guide/).

{{< callout type="verdict" title="The Short Version" >}}
Layer 1 (Levels 1-6): 2-4 basic Turrets, ammo paired to storage. Layer 2 (Levels 7-12): Upgrade to Advanced Turrets + 1 patrol Frigate. Layer 3 (Levels 13+): Pulse Turrets + Servitor escorts + Destroyer patrols. Wormhole invasions scale with station level. Every 3 levels = +1 wave and bigger enemies.
{{< /callout >}}


## Turret Reference

| Turret Type | Level | Cost | DPS | Range | Ammo | Best Against |
|-------------|-------|------|-----|-------|------|-------------|
| Basic Turret | 3 | 20 Steel + 5 Electronics | 8 | 100m | Basic Ammo | Level 1-6 enemies |
| Advanced Turret | 7 | 40 Steel + 15 Electronics | 18 | 150m | Armored Ammo | Level 7-12 enemies |
| Pulse Turret | 10 | 60 Steel + 30 Electronics + 10 Superalloy | 35 | 200m | Energy Cell | All levels, anti-shield |
| Flak Turret | 9 | 50 Steel + 20 Electronics | 12 (AOE) | 120m | Flak Shells | Swarms (groups of 5+) |
| Missile Turret | 12 | 80 Steel + 40 Electronics + 20 Superalloy | 50 | 250m | Missiles | Slow heavy units |

{{< resourcegrid ingredient="Turret Setup" input="Total Cost" output="Effective vs" ratio="Best For" >}}
  {{< row item="2x Basic" input="40 Steel + 10 El" output="Lv1-6 enemies" ratio="Early game" >}}
  {{< row item="2x Adv + 1x Flak" input="150 Steel + 50 El" output="Lv7-12 + swarms" ratio="Mid-game" >}}
  {{< row item="3x Pulse + 1x Missile" input="260 Steel + 130 El + 50 SA" output="Lv13+ heavy waves" ratio="Late game" >}}
{{< /resourcegrid >}}


## Enemy Threat Levels by Station Level

| Station Level | Enemy Types | Max DPS per Enemy | Wave Count | Recommended Turrets |
|---------------|-------------|-------------------|------------|-------------------|
| 1-3 | Scavenger Drones | 2 DPS | 1 wave of 3 | 1-2 Basic |
| 4-6 | Scavengers + Small Anomalies | 5 DPS | 2 waves of 3 | 2-3 Basic |
| 7-9 | Anomalies + Attacker Drones | 10 DPS | 2 waves of 4 | 2 Advanced + 1 Basic |
| 10-12 | Void Anomalies + Plasma Worms | 20 DPS | 3 waves of 3-5 | 2 Advanced + 1 Flak |
| 13-15 | Void Anomalies + Corrupted Ships | 35 DPS | 3 waves of 4-6 | 3 Pulse + 1 Flak |
| 16-18 | Corrupted Ships + Armored Leviathans | 50 DPS | 4 waves of 5+ | 3 Pulse + 1 Missile |
| 19-20 | Leviathans + Void Behemoths | 80 DPS | 4 waves of 6+ | 4 Pulse + 2 Missile + Patrol Frigate |

**The biggest jump** is Level 7 and Level 13. At Level 7, the first Attack Drones appear →?they are faster than Basic Turrets can track. You need Advanced Turrets with better rotation speed. At Level 13, Corrupted Ships have shields, which require Pulse Turrets to drain before hull damage applies.

{{< callout type="info" title="Quick Tip" >}}
**Turret ammo strategy:** Do not pair all turrets to the same ammo container. If that container runs dry, all turrets stop. Instead, pair each turret to its own small ammo storage (20-30 ammo capacity). Turrets reload from their paired container. When one runs out, the others keep firing. I use 3 dedicated small containers instead of 1 big one.
{{< /callout >}}


## Ship-Based Defense

| Ship Type | Level | Role | Combat Loadout |
|-----------|-------|------|----------------|
| Scout | 4 | Detection only | No weapons →?use as early warning |
| Corvette | 6 | Light patrol | 1x Laser + 1x Shield |
| Frigate | 8 | Main defense | 2x Laser + 1x Shield + 1x Armor |
| Destroyer | 12 | Heavy defense | 3x Cannon + 2x Shield + 2x Armor |

CPU-controlled ships on Patrol task will engage anything within their sensor range (roughly 300m for Frigate, 500m for Destroyer). They are slower than turrets to respond (2-5 second reaction time) but cover a much larger area.

For Servitor escort integration, see [Servitor Escort Guide](/guides/servitor-escort-guide/).


## Defense by Game Phase

### Early Game (Levels 1-6)

| Priority | Action | Cost |
|----------|--------|------|
| 1 | Build 2 Basic Turrets by Level 3 | 40 Steel + 10 Electronics |
| 2 | Set up ammo production | 1 Assembler + 10 Steel/min |
| 3 | Build 2 more Basic Turrets by Level 5 | 40 Steel + 10 Electronics |
| 4 | Pair turrets to individual ammo storage | 3 Storage containers |

**Expected outcome:** 4 Basic Turrets will handle all invasions through Level 6. You will lose some station hull integrity to the Anomalies (roughly 5-10% per invasion) but should not lose the station.

### Mid Game (Levels 7-12)

| Priority | Action | Cost |
|----------|--------|------|
| 1 | Upgrade 2 turrets to Advanced | 80 Steel + 30 Electronics |
| 2 | Build a Corvette on Patrol | Shipyard + 40 Steel + 15 Electronics |
| 3 | Add 1 Flak Turret for swarms | 50 Steel + 20 Electronics |
| 4 | Research Armored Ammo | 2,000 Tech Points |

**Expected outcome:** 2 Advanced + 2 Basic + 1 Flak + 1 Corvette handles all threats through Level 12. Plasma Worms will occasionally get through →?that is normal. Station hull repairs needed every 3 invasions.

### Late Game (Levels 13+)

| Priority | Action | Cost |
|----------|--------|------|
| 1 | Replace Basics with Pulse Turrets | 60 Steel + 30 Electronics + 10 Superalloy each |
| 2 | Summon a Destroyer for Patrol | Shipyard + 120 Steel + 40 Electronics |
| 3 | Add Missile Turret for Leviathans | 80 Steel + 40 Electronics + 20 Superalloy |
| 4 | Assign Servitor escorts to patrol ships | See Servitor Escort Guide |

**Expected outcome:** 3 Pulse + 1 Missile + 1 Destroyer + Servitor escorts handles everything through Level 20. Leviathans at Level 18-20 will still deal significant damage. Plan to repair 10-20% hull per major invasion.


## Repair and Recovery

| Repair Method | Cost | Speed | AFK |
|--------------|------|-------|-----|
| Manual (right-click, repair) | 10 Steel per 10% hull | Instant | No |
| Servitor Station Repair | Free (uses Servitor charge) | ~5% per tick | Yes |
| Auto-Repair Module | 50 Electronics + 20 Superalloy | ~2% per 10s | Yes (passive) |

For automated station healing, see [Automated Repair and Station Healing Guide](/guides/automated-repair-station-healing/).

{{< callout type="info" title="Community Verification" >}}
Threat levels verified over 30+ combat encounters on v1.1.1.0. Damage and range numbers from in-game tooltips. Corrupted Ships at Level 13+ confirmed as v1.1 additions. Shield mechanics confirmed against Steam forum testing.
{{< /callout >}}
