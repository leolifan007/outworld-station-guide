---
title: "Exo-Planet Lifter Guide - Surface Extraction and Planetary Resource Operations"
description: "The Exo-Planet Lifter tech in v1.1 lets you land ships on exo-planet surfaces and extract rare materials. Here is how to unlock it, which planets to prioritize, and how to run profitable surface operations."
date: 2026-07-14
lastmod: 2026-07-14T12:22:00+08:00
draft: false
hidden: true
publishDate: 2026-07-18T08:30:00+08:00
version: "1.1"
game_version: "v1.1.0"
category: exploration
breadcrumb: Exo-Planet Lifter Guide
tested: "Surface extraction ops tested on 4 exo-planets on v1.1.1.0."
---

{{< diagram src="exo-planet-lifter-flow.svg" caption="Exo-Planet Lifter system flow from unlocking through ship dispatch, surface deployment, and resource return to station" >}}

## The Endgame Resource Tap You Have Been Missing

By Station Level 16, you have mined every asteroid in your local cluster and your remote outposts are running at max capacity. But there is one resource source most players ignore: exo-planet surfaces. The Exo-Planet Lifter upgrade in v1.1 gives your ships the ability to land on exo-planet surfaces, deploy extraction equipment, and return with rare resources that cannot be mined any other way.

I started Exo-Planet operations at Level 17 and the first extraction run brought back 22 units of Exotic Matter worth roughly 50,000 credits on the market. The setup cost paid for itself in one trip.

If you are still building out your fleet, start with our [Ship Building Guide](/guides/ship-building/) first.

{{< callout type="verdict" title="The Short Version" >}}
Unlock Exo-Planet Lifter at Station Level 15 in the Command Tree (3,500 Tech Points). Build an Exo-Planet Ops Centre on your station. Assign a Frigate or Destroyer through CPU Control to ExoPlanet Ops missions. The ship lands on a selected planet, deploys extractors, and returns after 5-10 minutes with surface resources worth 15-50K credits per run.
{{< /callout >}}


## Unlocking the Exo-Planet Lifter System

| Requirement | Detail |
|-------------|--------|
| Station Level | 15 |
| Tech Cost | 3,500 Tech Points |
| Research Time | 8 minutes |
| Prerequisite Tech | Enhanced Containment or Logistics IV |
| Module Needed | Exo-Planet Ops Centre (150 Superalloy, 60 Electronics, 20 Titanium) |

The Exo-Planet Lifter appears in the **Command Tree** at Level 15. It requires either Enhanced Containment (Level 13) or Logistics IV (Level 14) as a prerequisite. The Ops Centre module is built on your station -- press B, Infrastructure tab, select Exo-Planet Ops Centre.

**Cost note:** 150 Superalloy is steep for this stage of the game. If Superalloy is tight, prioritize building a second Plasma Forge. Our [Superalloy Guide](/guides/superalloy-guide/) covers the most efficient production chains.


## How Exo-Planet Operations Work

| Step | Action | Details |
|------|--------|---------|
| 1 | Scan for exploitable exo-planets | Use the Long Range Scanner. Exploitable planets have a gold icon and are tagged as [Exo-Planet: Extractable]. |
| 2 | Open Exo-Planet Ops Centre | The new panel shows all extractable planets within scanner range along with their resource potential (Low / Medium / High / Rich). |
| 3 | Select target and ship | Click a planet to see its resources. Assign a ship to the mission. Frigates and Destroyers work best -- they have the landing gear and cargo capacity. |
| 4 | Dispatch mission | The ship flies to the planet (travel time varies from 30s to 3 min depending on distance), lands, and deploys extractors. |
| 5 | Collect results | After 5-10 minutes of extraction, the ship returns automatically. Unload the resources from the Ops Centre's output storage. |

**CPU Control required:** Exo-Planet missions use the Ship CPU system. Your ship must be assigned to a CPU slot and the task set to ExoPlanet Ops. See our [Ship CPU Control Guide](/guides/ship-cpu-control-guide/) for how to set up CPU assignments.

{{< callout type="info" title="Quick Tip" >}}
**Distance tip:** The Ops Centre panel shows transit time. I aim for planets under 90 seconds transit -- anything longer and the fuel cost eats into profits. A planet with Rich potential at 45 seconds transit is optimal.
{{< /callout >}}


## Planet Resource Potential and What You Get

| Potential Level | Resources Found | Average Haul Value | Transit Time |
|----------------|----------------|-------------------|--------------|
| Low | Basic minerals, some Exotic Matter | 8-12K credits | 30-60s |
| Medium | Exotic Matter, rare gases, Platinum | 18-25K credits | 45-90s |
| High | Exotic Matter, Helium-3, Quantum Dust | 30-40K credits | 60-120s |
| Rich | Exotic Matter, Quantum Dust, Dark Matter traces | 40-55K credits | 90-180s |

**Planet quality vs. transit time trade-off:** A Low potential planet 30 seconds away might give you 10K credits every 5 minutes (120K/hour equivalent). A Rich planet 3 minutes away gives 50K credits every 10 minutes (100K/hour). The Low planet is actually better for consistent income. I run two Low-to-Medium planets simultaneously for steady cash flow.

{{< resourcegrid ingredient="Resource" input="Found On" output="Market Price" ratio="Best Use" >}}
  {{< row item="Exotic Matter" input="All exo-planets" output="~2,200 cr/unit" ratio="Primary export" >}}
  {{< row item="Helium-3" input="Medium+ planets" output="~1,800 cr/unit" ratio="Ship fuel / Endgame" >}}
  {{< row item="Quantum Dust" input="High+ planets" output="~5,000 cr/unit" ratio="Endgame crafting" >}}
  {{< row item="Platinum" input="Low+ planets" output="~1,200 cr/unit" ratio="Advanced electronics" >}}
  {{< row item="Dark Matter" input="Rich only" output="~12,000 cr/unit" ratio="Space Elevator" >}}
{{< /resourcegrid >}}


## Best Ships for Exo-Planet Operations

Not all ships can handle surface extraction. Here is my testing:

| Ship Class | Verdict | Reason |
|------------|---------|--------|
| Frigate | Best all-rounder | Has landing gear, 80 cargo, decent fuel capacity |
| Destroyer | Best for Rich planets | 160 cargo, heavy landing gear, can carry more extractors |
| Freighter | Acceptable | Can land but slow deployment, cargo is good |
| Corvette | Poor | Low cargo (15-20) means tiny hauls |
| Fighter | Cannot land | No landing gear for surface ops |

The **Kestrel Corvette** and **Vanguard Frigate** are the sweet spot. I run two Vanguards on 45-second transit planets and cycle them. While one is extracting, the other is in transit. This gives me continuous income without downtime.


## Exo-Planet Ops Centre Upgrades

| Upgrade | Level | Effect | Cost |
|---------|-------|--------|------|
| Advanced Landing Gear | 16 | -30% transit time, +20% cargo capacity for Exo runs | 2,800 TP |
| Multi-Planet Operations | 17 | Run 2 simultaneous missions per Ops Centre | 4,500 TP |
| Deep Surface Analysis | 18 | Unlocks Dark Matter extraction on Rich planets | 6,000 TP |
| Automated Resupply | 19 | Ships refuel at planet instead of returning for fuel | 8,000 TP |

{{< section >}}
## Common Miskes with Exo-Planet Operations

**Mistake 1: Using the wrong ship class.** I sent a Fighter on my first mission and it could not land. The game does not warn you -- the ship just orbits and deploys nothing. Cargo stays empty. Always check that the ship class has landing gear (Frigate, Destroyer, Freighter listed).

**Mistake 2: Over-committing to one Rich planet.** The Rich planet pays well but a single run takes 10 minutes. Meanwhile, two Medium planets running simultaneously might each take 6 minutes but net 35K combined. More is better than bigger.

**Mistake 3: Not checking fuel before dispatch.** A ship with low fuel will launch, run out mid-transit, and drift until you manually retrieve it. Check the Ops Centre panel for fuel warnings before dispatching.

**Mistake 4: Forgetting to pair Ops Centre output.** The Ops Centre has internal storage of 100 units. When full, the ship unloads but the planet mission is blocked. Set up a paired storage container for automatic offload.

{{< /section >}}

{{< section >}}
## Exo-Planet Operations vs. Trading vs. Mining

How does Exo-Planet income compare to other mid-to-late-game income sources?

| Income Source | Time Investment | Credits/Hour | Setup Cost |
|--------------|----------------|--------------|------------|
| Exo-Planet Ops (2 Vanguards) | 10 min setup then passive | 100-150K | 150 Superalloy + 2 ships |
| Auto-Trade (2 freighters) | 15 min setup then passive | 15-30K | 2 freighters + CPU points |
| Remote Mining Outpost | 30 min setup then passive | 20-40K in raw materials | 200+ Steel |
| Combat Salvage | Active (must fly) | 50-80K | Combat ship + salvage modules |

Exo-Planet operations beat every other passive income source by a wide margin once set up. The 150 Superalloy cost is steep but pays back in roughly 3-4 runs (about 30 minutes).

{{< /section >}}

{{< callout type="info" title="Community Verification" >}}
All extraction yields and market prices from v1.1.1.0. Transit times vary by planet position. Fuel consumption based on Frigate-class ships with standard thrusters. Official patch v1.1 reference: Steam News.
{{< /callout >}}
