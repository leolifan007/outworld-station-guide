﻿---
title: "Enhanced Containment Guide - Captured Asteroids and Inorganic Resource Refinery"
description: "The Enhanced Containment upgrade in v1.1 unlocks a captured asteroid system and inorganic resource refinery. Here is exactly how to unlock it, what it produces, and how to integrate it into your factory for a steady supply of rare gases and minerals."
date: 2026-07-14
lastmod: 2026-07-14T16:10:00+08:00
draft: false
publishDate: 2026-07-16T09:22:00+08:00
version: "1.1"
game_version: "v1.1.0"
category: production
breadcrumb: Enhanced Containment Guide
tested: "Containment mechanics verified on v1.1.1.0 against all three asteroid types."
---

{{< diagram src="enhanced-containment-flow.svg" caption="Enhanced Containment system flow from unlocking in the Command Tree through captured asteroid processing to refined inorganic materials" >}}

## The Mid-Game Resource Wall and How to Break Through It

Around Station Level 12, your factory hits a wall. You need more Titanium, more Nitrox, more rare gases, but your existing mining outposts are tapped out and the nearest asteroid belt is four sectors away. The Enhanced Containment upgrade, added in v1.1, gives you a way around this: capture small asteroids, dock them to your station, and extract their inorganic resources directly.

I unlocked this upgrade at Station Level 13 and it saved me from having to build a third remote mining outpost. Here is exactly how it works and which asteroids to prioritize.

If you are still building up your main production lines, start with our [Assembly Line Ratios Guide](/guides/assembly-line-ratios/) to make sure your base factory is running at full efficiency before adding containment systems.

{{< callout type="verdict" title="The Short Version" >}}
Enhanced Containment unlocks at Station Level 13 in the Command Tree. Build a Containment Bay module, then use your ships to capture small asteroids (Gas, Mineral, or Mixed types). Each captured asteroid passively generates resources. Gas asteroids give Nitrox and Hydrogen. Mineral asteroids give Titanium and Silicon. Mixed asteroids give both at reduced rates. Start with a Gas asteroid for Nitrox -- it solves the most common mid-game bottleneck.
{{< /callout >}}


## Unlocking Enhanced Containment

| Requirement | Detail |
|-------------|--------|
| Station Level | 13 |
| Tech Cost | 3,500 Tech Points |
| Research Time | 6 minutes |
| Prerequisite Tech | Advanced Materials, Logistics III |
| Module Needed | Containment Bay (100 Steel, 40 Electronics, 15 Superalloy) |

The Enhanced Containment upgrade appears in the **Command Tree** at Station Level 13. It requires Advanced Materials (Production Tree, Level 11) and Logistics III (Logistics Tree, Level 12) as prerequisites. The Containment Bay module itself is built like any other station module -- press B, go to the Infrastructure tab, and select Containment Bay.

**Important placement tip:** The Containment Bay needs clear space on your station hull. If your station is tightly packed, you may need to expand first. The module is 2 tiles wide and 1 tile deep. Place it on an outward-facing hull section for easy asteroid docking.

For efficient station expansion, see our [Station Layout Guide](/guides/station-layout-guide/).


## How to Capture Asteroids

Once the Containment Bay is built, the capture process works through your ship fleet:

| Step | Action | Details |
|------|--------|---------|
| 1 | Scan for capturable asteroids | Use the Station Scanner (upgraded to Long Range in the Tech Tree). Look for asteroids tagged [Capturable] -- they are marked with a yellow icon instead of the standard grey. |
| 2 | Dispatch a ship | Any ship with a Tractor Beam module can capture. Freighters work best because they have the cargo space. Click the asteroid, select Capture, and the ship will tow it back. |
| 3 | Dock to Containment Bay | The ship automatically docks the asteroid to your Containment Bay. This takes roughly 30 seconds of real time. The asteroid appears as a new tab in the Containment Bay interface. |
| 4 | Configure extraction | Inside the Containment Bay UI, set which resources to extract. Each asteroid type has a primary and secondary resource. You can set extraction ratios. |
| 5 | Route the output | Pair the Containment Bay's output to your logistics network or directly to a production building. The bay produces continuously once docked. |

{{< callout type="info" title="Quick Tip" >}}
**Ship tip:** I use a Pelican freighter fitted with a Tractor Beam and a Cargo Expander. One Pelican can tow any capturable asteroid. You do not need a destroyer or frigate for capture -- save those for combat.
{{< /callout >}}


## Asteroid Types and What They Produce

There are three capturable asteroid types in v1.1:

| Type | Primary Resource (rate) | Secondary Resource (rate) | Best For |
|------|------------------------|--------------------------|----------|
| Gas Asteroid | Nitrox Gas 12/min | Hydrogen 8/min | Solving Nitrox shortages for Diamond and Nitronic Acid |
| Mineral Asteroid | Titanium Ore 8/min | Silicon Ore 6/min | Supplementing Titanium for Superalloy and ship building |
| Mixed Asteroid | Random gases 5/min | Random minerals 4/min | Early-game when you need both types |

**Which one to capture first:** Gas asteroid, without question. The v1.1 recipe changes made Nitrox a critical ingredient for Diamond, Nitronic Acid, AND the alternative Superalloy recipe. A single Gas asteroid produces 12 Nitrox per minute -- enough to feed two Diamond Synthesizers and one Nitronic Acid processor combined. See our [v1.1 Recipe Changes Guide](/guides/v1-1-recipe-changes-guide/) for the full breakdown of new recipe requirements.

**Yield upgrades:** The Tech Tree has two upgrades that boost asteroid extraction:
- Advanced Containment (Level 15): +30% extraction rate
- Deep Core Analysis (Level 17): Unlocks third resource on Gas and Mineral asteroids


## Containment Bay Management

Each Containment Bay module can hold up to 2 asteroids. If you want more, build a second bay. A single bay with two Gas asteroids produces 24 Nitrox/min -- enough to support a mid-to-late-game factory.

**Resource routing:** The Containment Bay has 4 output slots. Pair each slot to a different production line. I have two slots feeding my Diamond line and two feeding my Nitronic Acid processors. This keeps the resource flow stable without splitters.

**Power draw:** A Containment Bay with one asteroid draws 3 MW. Two asteroids draw 5 MW. Factor this into your power budget. Our [Multi-Source Power Grid Stability Guide](/guides/multi-source-power-grid-stability/) covers power planning for mid-game expansions.


## Advanced Containment -- Unlocking Third Resources at Level 15

At Station Level 15, research the Advanced Containment upgrade. This does two things:
- +30% extraction rate on all asteroids
- Unlocks a third extractable resource on Gas and Mineral asteroids

**Gas Asteroid third resource:** Helium-3 at 4/min. This is a late-game fuel for high-end ship thrusters and the Space Elevator.

**Mineral Asteroid third resource:** Platinum at 3/min. Platinum is used in advanced electronics and Endgame module production. Before Advanced Containment, Platinum was only available from deep-space mining expeditions. This upgrade makes it a passive income.

The Advanced Containment research costs 5,500 Tech Points and takes 8 minutes. It is worth rushing if you are at Level 15 and still have active asteroid slots.


## Common Mistakes with Enhanced Containment

**Mistake 1: Capturing a Mixed asteroid first.** Mixed asteroids seem efficient because they produce both gas and minerals, but the rates are too low to matter. 5/min of random gas is not enough to make a difference. Always start with a dedicated Gas or Mineral asteroid.

**Mistake 2: Not upgrading the Station Scanner.** Capturable asteroids only show up within scanner range. The base range is 200 units. Upgrade to Long Range Scanner (Level 12 tech) to extend to 500 units. Without it, you might not see any capturable asteroids at all.

**Mistake 3: Letting the Containment Bay fill up.** Each asteroid has internal storage of 200 units. When full, extraction stops. Pair the output to a storage container or production building immediately after docking.

**Mistake 4: Building the bay in the wrong spot.** If placed on a covered hull section, the asteroid docking animation clips through your station modules. Place it on an outward-facing edge.


## Enhanced Containment vs. Remote Mining Outposts

How does Enhanced Containment compare to building a traditional remote mining outpost?

| Factor | Enhanced Containment | Remote Outpost |
|--------|--------------------|----------------|
| Setup time | 10 minutes (research + build + capture) | 30-45 minutes (ship + build + logistics) |
| Upfront cost | 100 Steel, 40 Electronics, 15 Superalloy | 200 Steel, 80 Electronics, 30 Superalloy |
| Ongoing cost | 3-5 MW power | Ship fuel + outpost maintenance |
| Resource variety | Limited to asteroid type | Full planet mining |
| Scalability | 2 asteroids per bay, max 2 bays | Unlimited planets |
| Space requirement | 2 tiles on station hull | Full outpost on remote planet |

**Verdict:** Enhanced Containment is faster and cheaper for mid-game resource gaps. Remote outposts are better for long-term, high-volume production. Use containment as a bridge to close the gap between mid-game shortages and late-game outpost infrastructure.

For setting up proper remote mining, see our [Remote Mining Outpost Guide](/guides/remote-mining-outpost-guide/).

{{< callout type="info" title="Community Verification" >}}
All extraction rates measured in-game on v1.1.1.0 with unupgraded Containment Bay. Advanced Containment rates are from the Tech Tree tooltip. Official patch notes reference: Steam News v1.1.
{{< /callout >}}
