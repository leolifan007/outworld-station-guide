---
title: "Cross-Planet Power Limits Guide -- Powering Outposts Without Transmission"
description: "Outworld Station does not let you transmit power between planets. Here is the v1.1.1.0-verified playbook: local generation per planet, fuel logistics, and the outpost power checklist."
date: 2026-08-19
lastmod: 2026-08-19T10:40:00+08:00
draft: false
hidden: true
publishDate: 2026-08-20T09:00:00+08:00
version: "1.1.1.0"
game_version: "v1.1.1.0"
category: power
breadcrumb: Cross-Planet Power Limits
tested: "Outpost power strategy verified on v1.1.1.0 with a two-planet operation and a gas-giant mining rig."
---

{{< diagram src="cross-planet-power.svg" caption="No cross-planet power: generate locally, ship fuel, keep a fallback" >}}

## The Power Rule That Shapes Your Empire

Here is a rule you will hit the moment you colonize a second planet: **power does not transmit between planets**. No cables, no wireless, no wormhole power taps. Every planet (and every distant outpost) must generate its own power.

This is one of the most common complaints in Outworld Station reviews -- and v1.1.1.0 did not change it. But it is not a design flaw; it is a logistics puzzle. This guide is the v1.1.1.0-verified playbook for powering outposts without transmission.

{{< callout type="verdict" title="The Short Version" >}}
Every planet generates its own power. Match the generator to the planet's local resources: solar where there is sun, reactors where there is fuel, and always ship a fuel buffer. The winning pattern is local generation + shipped fuel + a small battery/fallback bank. Never build a power-hungry outpost without first budgeting its local fuel supply chain.
{{< /callout >}}

## The Three Strategies

### 1. Local Generation (The Default)

Match generators to what the planet has:

| Planet type | Best generation |
|-------------|-----------------|
| Sun-rich | Solar fields ([Power Source Comparison](/guides/power-source-comparison/)) |
| Gas giant | Gas-based reactors (see [Deep Space Gas Giant Mining](/guides/deep-space-gas-giant-mining/)) |
| Asteroid/rock | Ship fuel in; run compact reactors |

The rule: **generate from local abundance, import only what the planet lacks.**

### 2. Fuel Logistics (The Critical Path)

If a planet cannot generate enough locally, you ship fuel. This is where most players fail -- they ship the *resource* but forget the *supply chain math*:

```
Outpost demand (MW) × run time = fuel needed
Fuel per freighter trip = capacity
→ Trips per hour = demand / capacity
```

A freighter route that delivers fuel every 20 minutes works only if the outpost's buffer covers 20+ minutes of demand. Build the buffer first, then tune the route. See [Freighter & Mining Guide](/guides/freighter-mining-guide/) for route tuning and the [Freighter Overview](/guides/freighter-overview-monitoring/) to monitor it.

### 3. Fallback Bank (The Safety Net)

Every outpost gets a **small battery/fallback bank** sized for ~10 minutes of full demand. It does not replace generation -- it absorbs the gap when a fuel shipment is late or a solar field dips. The v1.1.1.0 power fixes (no phantom reactor animations, stable load behavior) make fallback banks more reliable than they were at launch.

{{< callout type="tip" title="Pro Tip" >}}
Use the v1.1.1.0 **factory sound sliders** to hear when an outpost's generators are struggling. Set machine audio loud, music low, and your ears become a power-status monitor while you work on the main station.
{{< /callout >}}

## The Outpost Power Checklist

Before placing a single building on a new planet:

- [ ] **Budget demand**: sum every machine's power draw, add 30% headroom.
- [ ] **Choose generation**: what does this planet produce that can fuel it?
- [ ] **Build generation first**: power before production, always.
- [ ] **Add the fallback bank**: 10 minutes of full-demand battery.
- [ ] **Set up fuel logistics**: route + buffer, verified in the freighter view.
- [ ] **Test the failure case**: disconnect the fuel route for 10 minutes. Does the fallback hold?

{{< callout type="warning" title="Watch the 540 Cap on Fuel Lines" >}}
Fuel imports can hit the [540 items/min logistics cap](/guides/late-game-logistics-balance/) on busy routes. If your outpost needs more fuel than one channel can carry, you need parallel channels -- not a bigger belt. The cap applies to fuel just like everything else.
{{< /callout >}}

## The Mid-Game Sweet Spot

For most mid-game empires, the practical pattern is:

1. **Home station**: reactor block + solar supplement (see [Fusion Reactor Guide](/guides/fusion-reactor-guide/)).
2. **First mining planet**: solar + shipped fuel buffer.
3. **Gas giant rig**: burns local gas, exports fuel to the other outposts.

This covers 90% of expansions without ever needing "transmission" -- which the game does not offer and does not plan to (no announcement as of v1.1.1.0).

{{< callout type="verdict" title="Bottom Line" >}}
Cross-planet power transmission does not exist in Outworld Station, and it is not coming in v1.1.1.0. Stop waiting for it: generate locally from planetary resources, ship fuel with a real buffer, and keep a fallback bank on every outpost. The checklist above turns power management from a crisis into a routine -- and your multi-planet empire ([Multi-Planet Expansion Guide](/guides/multi-planet-expansion-guide/)) will never brown out again.
{{< /callout >}}
