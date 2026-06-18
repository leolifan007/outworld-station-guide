---
title: "Recycling & Deconstruction Guide - Reclaim Materials Without Starting Over"
description: "Your first factory is a mess and you want to rebuild. Here is how to deconstruct efficiently, reclaim up to 90% of materials, and avoid the scrap heap."
date: 2026-06-09
publishedAt: 2026-06-18T11:00:00+08:00
lastmod: 2026-06-14T09:52:22+08:00
draft: false
category: beginner
version: 1.0.0.0
breadcrumb: Recycling
emoji: 鈾?


---

Your starter base is a rat's nest of conveyor spaghetti, misplaced assemblers, and that one refinery you built backwards because you didn't read the orientation arrows.

The worst feeling in Outworld Station is staring at a mess you built and realizing you need to start over. But here is the secret: you do not have to. The game's deconstruction and recycling systems can reclaim the vast majority of your sunk costs. You just need to use them right.

## The Quick Fix

Before you blueprint a single thing, open your build menu and look for the **Deconstruction Planner** tool (bound to `X` by default). Click-drag a selection box over the area you want to demolish. The game highlights every eligible structure in red.

Here is the critical step no one tells you: **check the toggle for "Reclaim" in the planner panel before you confirm.** With Reclaim enabled, your constructors will automatically salvage and return materials to your inventory instead of vaporizing them into thin void.

Each constructor can handle about 10 deconstruction jobs before it needs a trip to the nearest storage. If your reclaim rates are lower than expected, you probably do not have enough constructors assigned.

## Reclamation Rates by Building Type

Not all buildings give back the same percentage. The game uses a tiered system based on complexity and building cost.

| Building Tier | Example                    | Base Reclaim Rate | With Reclaim Upgrade |
|---------------|----------------------------|-------------------|----------------------|
| Simple        | Conveyor, Pipe, Power Pole | 100%              | 100%                 |
| Basic         | Smelter, Constructor, Storage | 75%           | 90%                  |
| Advanced      | Assembler, Refinery, Miner | 50%               | 75%                  |
| Complex       | Manufacturer, Particle Collider | 30%          | 60%                  |

<div class="callout callout-tip">
<strong>Pro tip:</strong> Conveyors and pipes always return at 100%. If you are reorganizing, rip up belts first and reclaim every piece. Use the reclaimed materials to feed your new layout without touching your resource stockpile.
</div>

## The Reclaim Upgrade

Halfway through your first playthrough you will unlock the **Material Recovery** research node in the Logistics tree. Spend the science. It is cheap and it permanently boosts every building's reclaim rate by 15-30 percentage points as shown in the table above.

Without this upgrade, demolishing a Manufacturer (which costs hundreds of iron plates, circuits, and motors) gives you back barely a third of the components. With the upgrade, you get 60%. That is the difference between needing a fresh mining outpost and just patching the gap from your existing supply line.

<div class="callout callout-verdict">
<strong>Bottom line:</strong> Invest in the Material Recovery upgrade before doing any major demolition. The research cost is trivial compared to the material savings. This single unlock saves more resources in one cleanup than any other early-game tech.
</div>

## How the Recycling Flow Works

When you mark a structure for deconstruction with Reclaim enabled, the flow goes like this:

{{< diagram "recycling-flow.svg" >}}

1. Constructor bot flies to the marked structure.
2. Structure is deconstructed instantly (the bot takes a few seconds).
3. Materials are credited to the nearest logistics storage or your personal inventory.
4. If storage is full, the bot drops the items on the ground as a crate.

**Watch out for full storage.** If your logistics network is congested, constructors drop reclaim crates on the floor. Those crates do not decay, but they also do not route to your production lines. You have to manually pick them up or build additional storage nearby before the bot arrives.

## Specific Scenario: The Starter Base Rebuild

Here is a situation I ran into on my first playthrough. I built three rows of smelters on the wrong side of my iron deposit. Ore belts snaked across the entire base. Every time I expanded, I just built around them. By hour eight, I could not find the floor anymore.

**The fix took 15 minutes:**

1. I built a temporary smelter array on the correct side using a handful of new machines (12 smelters, 4 constructors for plates).
2. I used the Deconstruction Planner with Reclaim enabled on the entire old smelter line.
3. While 3 constructors worked through the queue, I laid down fresh foundations in the cleared space.
4. When they finished, I had 18 reclaim crates worth of iron plates, gears, and motors -- enough to build the proper layout without touching my ore stockpile.
5. The old ore belts reclaimed at 100% efficiency, giving me back every segment of conveyor.

If I had just deleted everything without Reclaim, I would have lost about 800 iron plates and had to spend 20 more minutes mining. Small difference for one rebuild. Massive difference over a 50-hour save.

<div class="callout callout-warning">
<strong>Warning:</strong> Do not deconstruct your power grid without building replacement capacity first. A dead base is a frozen base. Always build the new power plant before you tear down the old one. Solar panels are great for this because they need no fuel and can be placed in the cleared area afterward.
</div>

## Plan Before You Wreck

Before you hit confirm on any large deconstruction order, do three things:

1. Check your storage buffers. If they are near capacity, build more.
2. Assign extra constructors. I keep 5 idle bots dedicated to reclamation work.
3. Build a temporary dedicated storage hub near the demolition zone so reclaim crates land close together.

Your early-game mistakes are not permanent. Outworld Station is designed to let you iterate. Every misplaced refinery and every backwards assembler is just a learning opportunity with a reclaim rate attached to it.

For more on avoiding rebuilds in the first place, see the [Beginner Mistakes guide](/guides/beginner-mistakes/). When you are ready to scale past your starter base, the [Mid-Game Expansion Strategy guide](/guides/mid-game-expansion-strategy/) covers how to design modular factories that never need full demolition.

## External Resources

- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)
- [Official Outworld Station Wiki - Logistics](https://outworldstation.wiki/logistics)
- [Outworld Station Subreddit - Building Tips](https://reddit.com/r/outworldstation)
- [Factorio Deconstruction Guide (similar mechanics)](https://wiki.factorio.com/Deconstruction)

