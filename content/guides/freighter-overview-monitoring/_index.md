---
title: "Freighter Overview & Logistics Monitoring Guide -- v1.1.1.0"
description: "The advanced freighter view in v1.1.1.0 finally shows per-ship cargo, routes, and capacity at a glance. Here is how to use it to catch supply chain failures before they cascade."
date: 2026-08-19
lastmod: 2026-08-19T10:20:00+08:00
draft: false
hidden: true
publishDate: 2026-08-20T09:00:00+08:00
version: "1.1.1.0"
game_version: "v1.1.1.0"
category: logistics
breadcrumb: Freighter Overview Guide
tested: "Freighter overview panel inspected on a v1.1.1.0 save with a 6-ship fleet on interplanetary routes."
---

{{< diagram src="freighter-overview-flow.svg" caption="The v1.1.1.0 freighter overview: scan the whole fleet, spot the failure, fix it" >}}

## Finally: A Fleet Dashboard

Outworld Station's logistics network is the heart of your operation -- and for a long time, monitoring it meant clicking through every ship, one by one. The **Advanced Freighter View** shipped in v1.1.1.0 changes that. It is a single overview panel that shows you the entire fleet at once.

This guide covers what the panel shows, how to read it fast, and the monitoring rhythm that catches supply failures before they shut down your production lines.

{{< callout type="verdict" title="The Short Version" >}}
The v1.1.1.0 freighter overview lists every ship with its route, cargo load, and capacity in one screen. The winning habit: check it every 10-15 minutes of play, and treat any ship sitting at 0% load or stuck on a route as a system failure to investigate immediately. Pair it with the v1.1.1.0 exclusion filters (see [Item Exclusion Filters](/guides/item-exclusion-filters/)) to stop ships hauling junk.
{{< /callout >}}

## What the Panel Shows

| Column | What it tells you |
|--------|-------------------|
| Ship | Name / designation |
| Route | Origin → destination (station, planet, or outpost) |
| Cargo | Current load vs capacity |
| Status | En route, loading, unloading, idle, or stuck |

The cargo column is the one to watch. A healthy freighter on a well-tuned route runs **near full in both directions**. A ship that is consistently half-empty either has a filter problem, a route imbalance, or is hauling the wrong thing.

## Reading the Panel Like a Pro

### The 3 Red Flags

1. **Ship at 0% load for more than 2 minutes** -- either the source is out of the requested item, or the filters are excluding everything. Check the source storage first.
2. **Ship "stuck" on a route** -- this usually means the destination storage is full and the unloader can't drop cargo. Add storage or re-route.
3. **One ship on a route doing all the work** -- you have an imbalance. Either add a second ship or increase the load size (see the [Freighter & Mining Guide](/guides/freighter-mining-guide/) for load optimization).

### The Healthy Pattern

```
Full out (resources) → Unload → Full back (products) → Unload → repeat
```

If both legs are near full, your logistics are balanced. If one leg is consistently empty, you are shipping in only one direction -- which is fine for raw ore, but wasteful for anything else.

{{< callout type="warning" title="The 540 Cap Still Applies" >}}
The freighter overview shows you *ships*, not belts. The v1.1.1.0 patch did **not** fix the 540 items/min logistics cap. If you see ships loading slower than expected, that cap -- not your fleet -- is the bottleneck. Workarounds in [Late-Game Logistics Balance Guide](/guides/late-game-logistics-balance/).
{{< /callout >}}

## A Monitoring Rhythm That Works

You do not need to stare at the panel. Build a check into your natural play loop:

1. **Every time you expand** (new building, new outpost): open the freighter view and confirm the ships serving that line are moving.
2. **Every 10-15 minutes**: quick scan -- any red flags?
3. **Before you save & quit**: glance at the fleet. A stuck ship overnight means a dead production line in the morning.

This rhythm catches 90% of logistics failures while they are still cheap to fix.

## Connecting It to Your Network

The freighter view is the monitoring half; the [Cargo Drone Network](/guides/cargo-drone-network/) and [Interplanetary Logistics Guide](/guides/interplanetary-logistics-guide/) are the execution half. A complete setup:

- **Freighters** for bulk interplanetary hauling (ore, plates, gas)
- **Drones** for short-range station logistics
- **The freighter overview** as your single pane of glass

With v1.1.1.0, you finally have the visibility to run all three without guesswork.

{{< callout type="verdict" title="Bottom Line" >}}
The Advanced Freighter View is the best monitoring tool in v1.1.1.0. Learn to read it in 5 minutes, check it on a rhythm, and your logistics failures become 10-minute fixes instead of hour-long mysteries. It is the feature that turns "I hope my ships are working" into "I know exactly what my fleet is doing."
{{< /callout >}}
