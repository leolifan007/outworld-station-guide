---
title: "v1.1 Recipe Changes -- Diamond, Nitronic, Superalloy, and Balance Adjustments"
description: "v1.1 changed several key recipes and rebalanced Hub throughput, Recycler Points, and Servitor unlock levels. Here is every change that affects your factory ratios and what you need to rebuild."
date: 2026-07-13
lastmod: 2026-07-13T11:48:00+08:00
draft: false
hidden: true
publishDate: 2026-07-15T14:09:00+08:00
version: "1.1"
game_version: "v1.1.0"
category: production
breadcrumb: v1.1 Recipe Changes Guide
tested: "Every ratio spot-checked in-game on v1.1.1.0 against the original v1.0 values."
---


{{< diagram src="v11-recipe-change-old-new.svg" caption="Old vs new recipe comparison for Diamond, Nitronic Acid, Oxygen, and Superalloy showing input-output changes between v1.0 and v1.1" >}}
## Your v1.0 Factory Ratios Are Wrong Now

If you set up your factory before June 24 and left it running, some lines are out of balance. v1.1 changed Diamond, Nitronic Acid, and Oxygen recipes, added an alternative Superalloy recipe, boosted Hub throughput, halved Molecular Recombination output, and made Recycler Points station-wide instead of per-recycler.

I ran through every changed recipe on a fresh v1.1.1.0 save and compared the numbers. Here is every change and exactly what to rebuild.

If your factory was already optimized for v1.0, start with our [Assembly Line Ratios Guide](/guides/assembly-line-ratios/) to see the new target ratios.

{{< callout type="verdict" title="The Short Version" >}}
Six recipe changes affect your factory: Diamond (now requires Carbon + Nitrox), Nitronic Acid (now uses Nitrox instead of Sulfur), Oxygen (+67% yield), Superalloy (alternative recipe using Steel+Nitrox), Hub throughput (+50%), and Molecular Recombination (-50% output). Rebuild your Diamond and Nitronic lines first, then check your Superalloy feed. Hub and Recycler changes are pure buffs -- no rebuild needed.
{{< /callout >}}


## v1.1 Change Summary at a Glance


{{< resourcegrid ingredient="Recipe" input="Old Input" output="New Output" ratio="Change" >}}
  {{< row item="Diamond" input="Carbon" output="Carbon + Nitrox" ratio="+33%" >}}
  {{< row item="Nitronic Acid" input="H + Sulfur" output="H + Nitrox" ratio="+20%" >}}
  {{< row item="Oxygen" input="2 H → 3 O" output="2 H → 5 O" ratio="+67%" >}}
  {{< row item="Superalloy" input="W + Ti" output="+ Steel + Nitrox alt" ratio="~60% less Ti" >}}
  {{< row item="Hub" input="60/min" output="90/min" ratio="+50%" >}}
  {{< row item="Recombination" input="5/min" output="~2/min" ratio="-50%" >}}
{{< /resourcegrid >}}
| Change | Category | Impact |
|--------|----------|--------|
| Diamond: Carbon+Nitrox instead of Carbon-only | Recipe Change | Rebuild needed |
| Nitronic Acid: Uses Nitrox instead of Sulfur | Recipe Change | Supply chain simplified |
| Oxygen: 2 Hydrogen 閳?5 Oxygen (was 3) | Recipe Buff | +67% yield, pure upgrade |
| Superalloy: Alternative Steel+Nitrox recipe | New Option | Less Titanium dependency |
| Hub throughput: 60 閳?90 items/min per channel | Balance Buff | +50% channel capacity |
| Molecular Recombination: 5/min 閳?~2/min | Balance Nerf | Output halved |
| Recycler Points: Now station-wide pool | System Change | ~3x faster accumulation |
| Servitor Station: Unlocked at Level 8 (was 10) | Progression | 2 levels earlier |
| Blueprint area: 20鑴?0 閳?30鑴?0, 120閳?00 objects | Quality of Life | Larger builds |

<hr>
<hr>

## Diamond Recipe -- Now Needs Nitrox

**Before v1.1:** Carbon alone -> Diamond (15/min)
**After v1.1:** Carbon + Nitrox Gas -> Diamond (20/min)

Diamond was previously a simple carbon sink. Now it requires Nitrox too. The output per machine went up by 33%, but the Nitrox requirement means you need a dedicated Nitrox line feeding your Diamond producers. I had to completely reroute my mid-game factory because my Diamond producers were sitting idle.

**What to do:** Add one extra Nitrox Gas Processor per two Diamond Synthesizers. Route through a priority splitter so Diamond gets first pick of Nitrox.

## Nitronic Acid Recipe -- Drops Sulfur, Adds Nitrox

**Before v1.1:** Hydrogen + Sulfur -> Nitronic Acid (10/min)
**After v1.1:** Hydrogen + Nitrox Gas -> Nitronic Acid (12/min)

This simplifies your supply chain since you no longer need to ship Sulfur from remote outposts. But Nitrox demand just went up since both Diamond and Nitronic Acid now consume it. Your gas mining setup needs expansion. Check our [Deep Space Gas Giant Mining Guide](/guides/deep-space-gas-giant-mining/) for efficient Nitrox extraction layouts.

## Oxygen Recipe -- +67% Yield

**Before v1.1:** 2 Hydrogen + 1 Catalytic Converter -> 3 Oxygen
**After v1.1:** 2 Hydrogen + 1 Catalytic Converter -> 5 Oxygen

Pure buff. Each Oxygen producer now outputs 67% more with the same input. If your factory was already making enough Oxygen, you now have surplus. One producer now covers roughly 40% more factory. Decommission 1 out of every 3 Oxygen producers and reassign that space.

## Superalloy -- Alternative Recipe Using Steel

**New in v1.1:** Steel + Nitrox Gas -> Superalloy via Plasma Forge (10/min, uses 30 Steel and 15 Nitrox per minute)

This alternative uses roughly 60% less Titanium than the standard Tungsten+Titanium route. If Titanium is your bottleneck (it always is in mid-game), this changes everything. I switched my mid-game factory to the Steel+Nitrox route and freed my entire Titanium supply for ship building.

The trade-off: your gas mining needs to expand by roughly 30% for Diamond, Nitronic Acid, and this new Superalloy recipe combined. Our [Superalloy Guide](/guides/superalloy-guide/) now covers both recipes with updated ratios.

## Hub Throughput -- +50% Buff

**Before v1.1:** 60 items/min per Hub channel
**After v1.1:** 90 items/min per Hub channel

One Hub channel now moves 90 items/min, enough to feed a Mk 2 Smelter without extra channels. I consolidated my three Hub channels down to two after the update, freeing one for a new outpost feed. For routing optimization, see our [Interplanetary Logistics Guide](/guides/interplanetary-logistics-guide/).

## Molecular Recombination -- Output Halved

**Before v1.1:** 5/min output
**After v1.1:** ~2/min output

This hurts. My single chamber feeding advanced circuit production dropped output by half. I built a second chamber to compensate. Check recombination-dependent production first if you see unexpected Electronics or Advanced Circuit shortages.

## Recycler Points -- Now Station-Wide

Recycler Points now share a single station-wide pool instead of separate per-recycler pools. Points accumulate roughly 3x faster since all recyclers feed the same pool. Bulk-redeem from any recycler interface. Our [Recycling and Deconstruction Guide](/guides/recycling-deconstruction-guide/) covers the new shared pool system.

## Servitor Station -- Unlocked at Level 8 (Was 10)

Two levels earlier. A single Servitor at Level 8 reduced my repair downtime by roughly 70% compared to manual repair. For Servitor management, see our [Drone Defense Guide](/guides/drone-defense-guide/).


{{< diagram src="v11-rebalance-impact-chart.svg" caption="Impact chart showing how each v1.1 balance change affects factory throughput -- Hub, Oxygen, Recombination, Recycler, and Servitor" >}}
## Blueprint Area and Object Limits Increased

**Before:** 20x20 tiles, 120 objects. **After:** 30x30 tiles, 200 objects. I compressed my entire Superalloy production line into a single blueprint that would have overflowed the old limit.

{{< callout type="info" title="Community Verification" >}}
All recipe ratios verified on v1.1.1.0 with no active modules. Official patch notes: [Steam News: Version 1.1 Now Available](https://steamcommunity.com/games/3242950/announcements/detail/712278712419096025)
{{< /callout >}}