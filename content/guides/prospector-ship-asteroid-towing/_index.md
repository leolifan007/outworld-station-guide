---
title: "Outworld Station Prospector Ship and Asteroid Towing - Bring Asteroids to Your Station"
description: "Outworld Station prospector ship setup, asteroid towing mechanics, optimal asteroid selection, and the tow-and-mine workflow that extends your asteroid belt indefinitely."
date: 2026-07-13
publishedAt: 2026-07-13T10:00:00+08:00
breadcrumb: Asteroid Towing
lastmod: 2026-07-14
draft: false
version: "1.1"
game_version: "v1.1.0"
category: exploration
tested: "Asteroid towing tested with 20+ towed rocks across Station Level 6-12."
---

## Your Belt Is Running Dry. Tow the Next One Over.

The starter asteroid belt has limited ore. You can see a Titanium-rich asteroid 100m away. Your drills are idle because the current patch ran out. Do you build a mining outpost on the far asteroid? Or do you tow the entire asteroid closer?

You tow it. Asteroid towing is one of the most efficient mid-game mechanics. Instead of building expensive outposts with freighter logistics, you drag the resource-rich asteroid right next to your station and mine it like it belongs there.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Build a Prospector Ship with a Tractor Beam (size 3+ module). Fly to any asteroid weighing under 500 tons. Lock on with beam, activate tow, fly slowly back to station. Park the asteroid 10-20 tiles from your drills. Full cycle: 3-5 minutes per asteroid for 300-1000 units of ore.</p>
</div>

<hr>

<details class="md-fold">
<summary><span>Ship Requirements for Towing</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### What Your Ship Needs

| Component | Requirement | Notes |
|-----------|------------|-------|
| Ship Size | Minimum 3 modules | Shipyard I is too small, need Shipyard II |
| Tractor Beam | Module slot (size 2) | Research required (Station Level 4) |
| Engine Power | 200+ thrust | More thrust = faster towing speed |
| Power Supply | 50 kW for beam | Beam drains power while active |
| Stabilizers | Optional (reduces drift) | Highly recommended for large loads |

**Ship Build:**
```
[Cockpit] - [Power Core] - [Engine] - [Tractor Beam] - [Cargo Hold] - [Stabilizer]
```

**Towing Speed by Asteroid Weight:**

| Asteroid Weight | Max Tow Speed | Time for 100m | Drift Risk |
|:--------------:|:-----------:|:------------:|:---------:|
| Under 100 tons | 20 m/s | 5 seconds | None |
| 100-300 tons | 10 m/s | 10 seconds | Low |
| 300-500 tons | 5 m/s | 20 seconds | Medium |
| Over 500 tons | Cannot tow | N/A | N/A |

</div></stellungen>

<hr>

<details class="md-fold">
<summary><span>Asteroid Selection - Which Rocks to Tow</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### Read the Prospector Ping

Before towing, scan the asteroid with your Prospector tool:

| Ping Color | Ore Type | Priority | 
|-----------|---------|:-------:|
| Green | Iron/Copper only | Low (you have these nearby) |
| Blue | Titanium/Tungsten | High |
| Gold | Exotic/Rare minerals | Highest |
| White | Relic signature | Must extract before towing |

**Asteroid Quality Tier:**

| Tier | Ore Density | Total Yield | Recommended? |
|:----:|:----------:|:----------:|:-----------:|
| S | 80%+ rare ore | 1000+ units | Always tow |
| A | 60%+ rare ore | 500-1000 units | Tow if within 150m |
| B | Mixed ore | 300-500 units | Tow if very close |
| C | Mostly Iron | Under 300 units | Skip |

<div class="callout callout-tip">
  <h4>Priority Target</h4>
  <p>Any asteroid showing Titanium (Blue) pings with 300+ ton mass is worth towing. Titanium is the gate material for mid-game production, and having a dedicated Titanium asteroid next to your station eliminates the biggest logistics headache.</p>
</div>

</div></details>

<hr>

<details class="md-fold">
<summary><span>Parking and Mining the Towed Asteroid</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### Where to Park

Once you tow the asteroid back:

1. Position it 10-20 tiles from your station (close enough for connectors, far enough to not block expansion)
2. Release the Tractor Beam
3. The asteroid will drift slightly before settling into a stationary orbit
4. Place Drills directly on the asteroid surface
5. Connect drill outputs back to your station via connectors

**Drill Placement on Towed Asteroids:**

| Asteroid Size | Maximum Drills | Expected Mining Time |
|:------------:|:-------------:|:-------------------:|
| Small (<100t) | 1-2 | 5-10 minutes |
| Medium (100-300t) | 2-4 | 10-20 minutes |
| Large (300-500t) | 4-6 | 20-40 minutes |

**After the asteroid is depleted:**
You can either remove the drills and tow another asteroid, or use the depleted rock as a building platform (drill on the other side for a second round). Depleted asteroids have 20% the yield as a bonus.

</div></details>

<hr>

## Prospecting Route With Towing

1. Scan nearby sector with Prospector (find Blue/Gold asteroids)
2. Mark target with Beacon
3. Build a Prospector Ship (cockpit + engine + tractor beam)
4. Fly out, lock beam, tow back
5. Park, drill, connect
6. Repeat until your station is surrounded by resource rocks

<hr>

## v1.1: Automating Towing With Ship CPU Control

v1.1's Ship CPU Control system can take the pilot seat out of towing. Allocate CPU points to a Prospector's auto-tow role in the Ship menu and the ship will fly out, lock on, and tow asteroids back to your station on its own -- no manual flying.

**Manual towing vs. CPU auto-tow:**

| | Manual Towing | CPU Auto-Tow |
|---|---|---|
| Control | You fly the ship | Ship runs autonomously |
| Best for | Selecting exact rocks, scouting new sectors, one-off pulls | Repeatable hauls of known asteroid fields |
| Attention | Ties up you (or a pilot) | Hands-off, runs while you build |
| Setup cost | None beyond the tractor beam | Requires CPU points allocated to auto-tow |

{{< callout "info" >}}**v1.1:** Use manual towing when you are prospecting an unknown sector or want a specific asteroid parked in a precise spot. Use CPU auto-tow for the routine grind of pulling known Titanium/Tungsten rocks from a mapped belt -- let the ship loop the route while you focus on station production.{{< /callout >}}

The auto-tow role respects the same weight limits (under 500 tons) and drift behavior described above, so the towing-speed table still applies. Full role allocation and CPU budget details are in the [Ship CPU Control Guide](/guides/ship-cpu-control-guide/).

<hr>

### Related Guides
- [Ore Scanning and Prospecting Guide](/guides/ore-scanning-prospecting-guide/)
- [Ship Building Guide](/guides/ship-building/)
- [Freighter and Mining Station Guide](/guides/freighter-mining-guide/)
