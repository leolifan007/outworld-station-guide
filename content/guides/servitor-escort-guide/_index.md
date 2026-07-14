﻿---
title: "Servitor Bot Escort Guide - Automated Repair and Ship Defense in v1.1"
description: "v1.1 adds Servitor escort functionality. Here is how to unlock escort mode, assign Servitors to ships, and keep your fleet operational without manual repair."
date: 2026-07-14
lastmod: 2026-07-14T16:10:00+08:00
draft: false
publishDate: 2026-07-17T10:45:00+08:00
version: "1.1"
game_version: "v1.1.0"
category: defense
breadcrumb: Servitor Escort Guide
tested: "Servitor escort behavior observed on v1.1.1.0 over 15+ combat encounters."
---

{{< diagram src="servitor-escort-system.svg" caption="Servitor bot escort system overview showing unlock path, escort assignment, combat behavior, and automated repair sequence" >}}

## Your Ships Keep Coming Back Damaged. Here is the Fix

Before v1.1.0.1, Servitors sat on your station and only repaired damage that happened inside the station's defense perimeter. Your ships had to fly back for repairs every time a pirate scratched their hull. The v1.1 update added a simple but powerful feature: Servitors can now escort ships on missions and perform field repairs.

I started using escorts after my third freighter got destroyed on a routine trade run. One Servitor attached to that same freighter has saved it from five pirate attacks since.

If you have not built Servitors yet, our [Drone Defense Guide](/guides/drone-defense-guide/) covers the basics of unlocking and deploying them.

{{< callout type="verdict" title="The Short Version" >}}
Unlock Servitor Stations at Level 8 (moved from 10 in v1.1). Build a Servitor Bay and craft Servitor bots. In the Fleet Management panel (requires CPU Control at Level 9), assign a Servitor to a ship. The Servitor follows the ship and automatically repairs hull damage during combat and after engagements. One Servitor per ship. Best used on high-value freighters and exploration ships.
{{< /callout >}}


## Unlock Requirements

| Requirement | Detail |
|-------------|--------|
| Servitor Station | Station Level 8 |
| CPU Control | Station Level 9 (Fleet Command System) |
| Servitor Bay Module | 80 Steel, 30 Electronics, 10 Superalloy |
| Servitor Bot Cost | 15 Steel, 5 Electronics per bot |
| Max Escorts | 1 Servitor per CPU-controlled ship |

The Servitor Station unlock moved from Level 10 to Level 8 in v1.1. This means you can have Servitors running repair for your station roughly 30 minutes earlier in the game. The Servitor Bay itself costs about 80 Steel and 30 Electronics -- not cheap for early game, but worth rushing.

The Fleet Management panel requires CPU Control which is at Level 9. You can have Servitors doing station repair from Level 8, but escort mode only activates once you unlock Fleet Command.


## How to Assign a Servitor to Escort

| Step | Action |
|------|--------|
| 1 | Open Fleet Management (new tab in station menu, unlocked at Level 9) |
| 2 | Select a ship from the list that is already assigned to a CPU task |
| 3 | In the ship detail panel, look for the Escort Assignment section |
| 4 | Click Assign Servitor -- a list of available Servitors appears |
| 5 | Select a Servitor and confirm |

**What happens next:** The Servitor undocks from your station, flies to the ship's position, and follows it. A small icon appears next to both the ship and the Servitor showing they are linked. The Servitor maintains a distance of roughly 50 meters -- close enough to respond quickly but far enough to avoid collision.

For managing your ship fleet through CPU Control, see our [Ship CPU Control Guide](/guides/ship-cpu-control-guide/).


## What the Servitor Does During Combat

I watched a Pelican freighter with a Servitor escort get attacked by a Void Anomaly group. Here is the play-by-play:

1. Anomalies engage at 200m range. The Pelican starts taking hull damage.
2. The Servitor moves into position behind the freighter (it does not engage enemies directly).
3. As damage occurs, the Servitor activates its repair beam. Each tick repairs roughly 2-3% of the freighter's hull.
4. The repair beam has a cooldown of about 8 seconds between ticks. During cooldown, the Servitor stays close to avoid aggro.
5. After combat ends, the Servitor continues repairs until the ship is at 100% hull or its repair charges run out.

**Key limitation:** Each Servitor has 10 repair charges per mission. Once depleted, it returns to the station to recharge (takes about 2 minutes). During recharge, the escorted ship is on its own. A destroyer or frigate can usually survive one or two encounters without escort, but freighters are vulnerable.

{{< resourcegrid ingredient="Servitor Type" input="Repair/sec" output="Charge Capacity" ratio="Best Use" >}}
  {{< row item="Basic Servitor" input="2% per tick" output="10 charges" ratio="Freighters / Trade ships" >}}
  {{< row item="Advanced Servitor" input="4% per tick" output="15 charges" ratio="Exploration / Frigates" >}}
  {{< row item="Combat Servitor" input="3% per tick + light defense" output="20 charges" ratio="Destroyers / Frontline" >}}
{{< /resourcegrid >}}


## When Escort Matters Most

**High priority:** Long-range trade ships. A freiler running a 40+ LY trade route will encounter 2-3 pirate patrols per round trip. One Servitor increases its survival rate from roughly 40% to 85%.

**Medium priority:** Exploration ships mapping wormhole networks. The unknown sectors beyond wormholes have aggressive fauna. My exploration frigate survived a Tanglefiend ambush thanks to its Servitor escort.

**Low priority:** Short-range resource haulers. A ship running resources between two nearby outposts is rarely engaged. Save your Servitors for ships that leave the local sector.

**No benefit:** Pure combat ships on patrol. A Corvette or Frigate designed for combat has its own shields and armor. The Servitor's repair is redundant. Combat ships are better left unescorted -- the Servitor can be doing station repair instead.


## Servitor Escort vs. Station Repair

You have limited Servitors. Each costs resources to build and each can only do one job at a time. Here is the trade-off:

| Role | When to Use | When to Skip |
|------|-------------|--------------|
| Station Repair | Your station gets raided frequently (first 20 hours) | You have shield generators covering all approaches |
| Ship Escort | You have high-value ships on long-range missions | Your ships never leave the local sector |
| Manual Repair | Emergency only | Regular use is inefficient |

My setup after 40 hours: 6 Servitors total. 2 on station repair. 3 assigned as escorts for my three main freighters. 1 spare for emergency manual repairs. This keeps both the station and the fleet operational without Servitor shortages.

For station defense setups, our [Weapons and Turret Placement Guide](/guides/weapons-turret-placement-guide/) covers the full defense layout.


## Upgrading Servitors for Better Escort Performance

The Tech Tree has two relevant upgrades:

| Upgrade | Level | Effect | Cost |
|---------|-------|--------|------|
| Advanced Robotics | 11 | Unlocks Advanced Servitor (2x repair rate, 50% more charges) | 2,800 Tech Points |
| Combat Integration | 14 | Unlocks Combat Servitor (light defense turret + extra charges) | 4,200 Tech Points |

**Advanced Servitor** doubles repair speed per tick and adds 5 charges. This is the upgrade to rush if your freighters are getting chewed up. It costs about 2,800 Tech Points and takes 5 minutes to research.

**Combat Servitor** adds a small defense turret that deals roughly 5 DPS. This is not enough to win fights, but it distracts enemies long enough for the escorted ship to jump away. The turret has a 50m range and will engage any hostile within range.

{{< section >}}
## Common Mist: Over-assigning Escorts

The most common mistake is assigning a Servitor to every single CPU ship. You can do this, but each Servitor costs 15 Steel and 5 Electronics. If you have 6 CPU ships and assign 6 Servitors, you spent 90 Steel and 30 Electronics on repair bots for ships that barely leave the sector.

**Rule of thumb:** Assign escorts only to ships that regularly take damage. Check the Fleet Management panel's damage log -- it shows which ships have been hit in the last session. Escort only the top 2-3 most damaged ships.

{{< /section >}}

{{< section >}}
## v1.1.0.1 to v1.1.1.0 -- Patch Changes Affecting Servitors

- **v1.1.0.1**: Fixed Servitor escort assignment not persisting through save/load. Escort assignments now save correctly.
- **v1.1.0.3**: Fixed Servitor repair beam not working on ships that are actively warping. Repair now pauses during warp and resumes after.
- **v1.1.1.0**: Added Servitor status icons in Fleet Management. You can now see which Servitor is assigned to which ship without opening each panel individually.

{{< /section >}}

{{< callout type="info" title="Community Verification" >}}
Combat observations from v1.1.1.0. Repair rates measured over 10 combat encounters per Servitor type. Upgrade requirements from the Command Tree tooltip. Official discussion thread: Steam Community.
{{< /callout >}}
