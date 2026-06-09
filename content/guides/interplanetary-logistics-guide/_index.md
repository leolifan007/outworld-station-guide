---
title: "Interplanetary Logistics Guide - Move Resources Between Worlds"
description: "Your main station is full. Your outpost has everything you need. Now how do you actually move it? Here is every transport method ranked by cost and throughput."
date: 2026-06-09
lastmod: 2026-06-09T22:21:00+08:00
draft: false
hidden: true
publishDate: 2026-06-11T02:00:00+08:00
category: logistics
version: 1.0.0.0
breadcrumb: Interplanetary Logistics
emoji: 🚚

---

Ice fills your cargo bay while your main station burns deuterium keeping the furnaces lit. You have the resources. They are just in the wrong solar system.

Stop shipping raw ore by freighter. Here is the cheat code: build a cargo launcher on the mining outpost and a catcher on your main station. For short hops inside the same system, launchers move 5x the volume of a freighter at near-zero fuel cost. Save your freighters for cross-system routes where launchers cannot reach.

{{< diagram "interplanetary-logistics.svg" >}}

## Transport Method Comparison

Every interplanetary route boils down to four options. Here is how they stack up:

| Method | Range | Throughput (units/min) | Fuel Cost | Setup Complexity |
|--------|-------|-----------------------|-----------|------------------|
| Cargo Launcher | Same system only | 1,200 | Very Low | Medium (launcher + catcher pair) |
| Freighter | Any system | 240 | High (scales with distance x mass) | Low (one ship, one dock) |
| Drone Network | Same planet or adjacent orbit | 80 | None | High (two hubs, line of sight) |
| Wormhole Gate | Any paired gate | Instant | Medium (activation charge) | Very High (two gates + power) |

**The rule of thumb:** launchers for intra-system bulk, freighters for cross-system, wormholes for high-value low-volume, drones for planetary surface logistics only.

## Freighter Route Optimization

My first freighter route lost 50% of its profit to fuel costs. I was shipping copper ore 47 jump units in a stock hauler with no mass reduction upgrades. The fix was brutal and simple.

Three changes cut my fuel bill by 70%:

1. **Install mass reducers first.** Every upgrade that reduces ship mass lowers fuel consumption linearly. A tier-2 mass reducer pays for itself in three round trips.
2. **Use waypoint refueling stations.** Instead of one direct jump, split the route into shorter legs with a refueling depot mid-point. A journey of 50 units costs less as two 25-unit jumps than one 50-unit jump.
3. **Ship refined, not raw.** One container of copper plates is worth five containers of ore. Ship the dense stuff. Let your outpost smelt locally.

For the full freighter setup walkthrough, see the [Freighter Mining and Cargo Guide]({{< relref "/guides/freighter-mining-guide" >}}).

<div class="callout callout-tip">

**Pro tip:** Set your freighter to "auto-balance" mode in the route config panel. It stops the ship from flying half-empty. Default settings make freighters leave the moment they have any cargo. Change the minimum load threshold to 80% and save 40% on fuel immediately.

</div>

## When to Build Wormholes

Wormholes are the endgame transport solution. They cost a fortune in research and materials, and each gate requires a dedicated power plant. But they move cargo instantly between any two paired gates regardless of distance.

Build a wormhole network when:

- You are shipping exotic matter or quantum processors (high value, low volume)
- Your freighters are spending more on fuel than the cargo is worth
- You need real-time supply chains for production (no waiting for ship transit)
- You have stable power generation at both endpoints

Wormhole gates also double as passenger gates, which saves building separate transport for crew rotation. See the [Wormhole Terminal Construction Guide]({{< relref "/guides/wormhole-terminal-guide" >}}) for gate placement and power requirements.

<div class="callout callout-verdict">

**My verdict:** Start with launchers for your first off-world mining operation. Add freighters when you expand to a second system. Build wormholes only after you have established three or more outposts and the fuel costs are eating your profit margin. Drones are situational -- great for asteroid bases, terrible for anything with atmosphere.

</div>

## Cargo Type Restrictions

Not everything ships the same way. Here are the gotchas I learned the hard way:

- **Volatile cargo (explosives, fuel cells):** Freighters only. Launchers destroy them on impact. Wormholes require a safety stabilizer upgrade.
- **Live cargo (biological samples, crew):** Wormholes or passenger freighters. Launchers are lethal. Drones cannot carry life support.
- **Raw ore:** Best via launcher (intra-system) or freighter (inter-system). Never use wormholes for ore -- the activation cost exceeds the ore's value.
- **Processed goods:** Any method works. Prioritize speed based on production chain urgency.

## Automation Setup

A route is only useful if it runs without you. Here is the minimum automation checklist:

1. **Source side:** Storage container -> sorter -> transport loader. Set the loader to request 100% fill before dispatch.
2. **Destination side:** Transport unloader -> buffer storage -> factory input. Never let a transport dump directly into a machine.
3. **Drone hub:** If using drones at either end, each hub needs a dedicated drone charging pad. Under-powered drones crash mid-route and lose the cargo.

Automated logistics need drone networks at both endpoints for drone-based routes. For launchers and freighters, you only need the loader/unloader pair.

## External Resources

- [Official Outworld Station Discord](https://discord.gg/outworldstation) -- Active logistics channel with route blueprints
- [Subreddit Fleet Optimization Thread](https://reddit.com/r/outworldstation) -- Community fuel calculators and mass tables
- [Steam Workshop Transport Blueprints](https://steamcommunity.com/app/3242950/workshop/) -- Pre-built launcher arrays and freighter loadouts
- [Wiki: Transport Method Math](https://wiki.outworldstation.com/transport) -- Full throughput formulas and upgrade trees
