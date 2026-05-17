---
title: "Freighter & Mining Station Guide: Automate Remote Mining"
description: "Outworld Station freighter dock setup, mining station automation, and remote resource collection. Step-by-step from first dock to a 4-planet supply network."
date: 2026-05-17
publishedAt: 2026-05-18T12:00:00+08:00
breadcrumb: Freighter Mining
emoji: 🚀
lastmod: 2026-05-17
draft: false
category: logistics
---

<style>
.md-fold { margin: 18px 0; border: 1px solid #2A3A4C; border-radius: 6px; overflow: hidden; background: transparent; }
.md-fold summary { display: flex; align-items: center; gap: 10px; padding: 14px 18px; cursor: pointer; user-select: none; list-style: none; font-weight: 700; font-size: 1.02rem; color: #C8D6E8; background: rgba(58,123,213,0.08); transition: background 0.15s; }
.md-fold summary::-webkit-details-marker { display: none; }
.md-fold summary::marker { content: ""; display: none; }
.md-fold summary:hover { background: rgba(58,123,213,0.16); }
.md-fold[open] summary { background: rgba(0,212,170,0.08); border-bottom: 1px solid rgba(0,212,170,0.15); color: #00D4AA; }
.md-fold .fold-body { padding: 18px 20px; }
.md-fold .fold-toggle { margin-left: auto; font-size: 0.85rem; color: #5A7A9A; transition: transform 0.3s; white-space: nowrap; }
.md-fold[open] .fold-toggle { transform: rotate(180deg); color: #00D4AA; }
</style>

## Your Miners Are Right There — And Your Base Is Starving

You found a titanium vein on the other side of the asteroid belt. You built a mining rig on it. You watched it extract ore. And then you realized: how do you get that ore back to your smelter?

The answer is freighters. But the game does a terrible job explaining how freighter docks work, how to set up automated mining stations, or why your first attempt will probably result in ships flying back and forth with empty cargo holds.

I wasted six hours on my first mining outpost because I connected the freighter dock to the wrong container. Six hours. This guide is so you don't have to. Check our [Beginner Mistakes Guide](/guides/beginner-mistakes/) for more traps like this.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Freighters are automated cargo ships that fly between docks. You build a Freighter Dock at your main station, another at the mining outpost, and the ships carry resources back and forth on a loop. No manual piloting required. For station power, see our [Fusion Reactor Guide](/guides/fusion-reactor-guide/).</p>
</div>

---

<details class="md-fold">
<summary><span>Prerequisites — What You Need Before Building Freighters</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

Do not start building freighter infrastructure until you have these running:

| Requirement | Why | Minimum |
|---|---|---|
| Stable power | Freighter docks draw 8-15 power/sec each | 2 Small Reactors or 8 Solar Panels |
| Shipyard | You need this to build the freighter ship itself | Unlocked via Station Level 5+ research |
| Freighter Dock | The building that sends and receives ships | Research: "Freighter Logistics" |
| Iron Ingots + Silicon | Ship construction materials | 50+ Ingots, 30+ Silicon buffered |
| A remote mining site | Freighters need somewhere to go | At least 1 Miner placed on an asteroid |

<div class="callout callout-tip">
  <h4>Common Mistake</h4>
  <p>Building a Freighter Dock before you have stable power. The dock needs power to both launch and receive ships. If your grid blacks out mid-transit, the ship gets stuck in limbo and you have to rebuild it.</p>
</div>

**Research order recommendation:**
1. Basic Logistics (unlocks pipes and connectors)
2. Mining Expansion (unlocks remote miners)
3. Freighter Logistics (unlocks Freighter Dock)
4. Freighter Mk2 (faster ships, larger cargo)

Skip nothing in this chain. Each tier builds on the last.

</div>
</details>

---

{{< diagram src="freighter-outpost-flow.svg" caption="Freighter mining outpost setup process from main station dock to 3 remote outposts with automated defense" >}}



<details class="md-fold">
<summary><span>How Freighter Docks Actually Work</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

A Freighter Dock is a two-way building. It both sends and receives ships. Think of it as an airport, not a post office.

### The Loop

{{< diagram src="freighter-ship-cycle.svg" caption="Freighter ship travel cycle from main station dock to mining outpost and back" >}}

Each ship in your fleet follows this loop automatically. You do not assign routes. You do not schedule departures. The dock handles everything — as long as you set it up correctly.

### Cargo Flow Direction

This is where most players mess up. The Freighter Dock has two container connections:

- **Import Container**: Where the dock drops off incoming goods
- **Export Container**: Where the dock picks up goods to send out

At your **main station**:
- Import = receives ore from the outpost (connect this to your smelter input)
- Export = sends supplies to the outpost (fuel, building materials, etc.)

At your **mining outpost**:
- Import = receives supplies from the main station
- Export = sends ore back to the main station (connect this to your miner output)

<div class="callout callout-synergy">
  <h4>Got It Backwards?</h4>
  <p>If your freighters fly back and forth but never deliver anything, you probably connected the miner to the Import container instead of the Export container. I did this. Twice. The fix is simple: swap the connections.</p>
</div>

### Ship Capacity and Speed

| Ship Type | Cargo Slots | Speed | Build Cost | Best For |
|---|---|---|---|---|
| Small Freighter | 8 | Fast | Low | Early game, single-resource runs |
| Medium Freighter | 16 | Medium | Medium | Mid-game, multi-resource routes |
| Large Freighter | 32 | Slow | High | Late game, bulk transport |

For your first mining outpost, a Small Freighter is enough. You can always upgrade later.

</div>
</details>

<details class="md-fold">
<summary><span>Step-by-Step: Setting Up Your First Mining Outpost</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### Step 1: Find a Mining Spot

Open your star map and look for asteroids with resource icons. Fly there in your personal ship and scan the asteroid. You want:

- High-density ore (shows as bright spots on the scanner)
- No enemy spawns nearby (check for red zones)
- Within 2 sectors of your main station (shorter freighter trips = faster throughput)

### Step 2: Build the Outpost

Land on the asteroid and place these buildings in this order:

1. **Solar Panels** (4-6) — power first, always
2. **Miner** — on the ore vein
3. **Storage Container** — next to the miner
4. **Freighter Dock** — as close to the storage container as possible
5. **Connector** — from Miner → Storage Container
6. **Connector** — from Storage Container → Freighter Dock (Export side)

### Step 3: Connect the Docks

Go back to your main station. Build a Freighter Dock there. Now open the dock's interface at your main station and select "Connect to Remote Dock." Pick your mining outpost from the list.

The two docks are now linked.

### Step 4: Build and Assign a Freighter

Open your Shipyard. Build a Small Freighter. Once complete, go to your main station's Freighter Dock interface and assign the ship to the route.

The freighter launches immediately. It will:
1. Fly to the outpost
2. Pick up whatever is in the Export container
3. Fly back
4. Drop it in the Import container
5. Loop forever

### Step 5: Verify the Flow

Watch one full cycle. Check:
- Miner is producing ore (check the miner's output)
- Ore is flowing into the Storage Container (check the container)
- Ore is in the Export side of the Freighter Dock (check the dock)
- Freighter arrives at main station with ore in cargo (check Import container)

If any of these fail, trace backwards from the problem point.

<div class="callout callout-tip">
  <h4>Pro Tip</h4>
  <p>Add a second Storage Container at your main station's Import side, connected to your smelter input. This creates a buffer so your smelter never starves between freighter runs.</p>
</div>

</div>
</details>

<details class="md-fold">
<summary><span>Scaling Up: Multi-Planet Mining Networks</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

Once you hit Station Level 8, one mining outpost is not enough. You need multiple planets feeding your factory simultaneously. Here is how to set it up without creating a logistical nightmare.

### The Hub-and-Spoke Model

{{< diagram src="wormhole-planet-chain.svg" caption="Multi-planet wormhole chain routing through intermediate stations to the main hub" >}}

Your main station is the hub. Every mining outpost is a spoke. Freighters fly directly between each outpost and the main station. Do not try to create outpost-to-outpost routes — it complicates everything and doubles your transit time.

### How Many Freighters Per Route?

| Ore Type | Production Rate | Recommended Ships | Why |
|---|---|---|---|
| Iron | High (20-40/sec) | 2 Small or 1 Medium | Iron flows fast, you need constant pickup |
| Titanium | Medium (10-20/sec) | 1 Small | Slower extraction, one ship keeps up |
| Tungsten | Low (5-10/sec) | 1 Small | Rare ore, low volume |
| Silicon | Medium (10-15/sec) | 1 Small | Steady but not overwhelming |

**Rule of thumb:** If your Export container at the outpost is more than 75% full, add another freighter.

### Wormhole Integration

Once you unlock Wormhole Generators, you can skip freighters entirely for planets that have a wormhole connection. Wormholes sync inventories instantly — no ship travel time needed.

But freighters still have a role: for planets too far for wormholes, or for moving items that you do not want cluttering your wormhole-linked storage.

<div class="callout callout-synergy">
  <h4>Wormhole + Freighter Combo</h4>
  <p>Use wormholes for high-priority resources (Superalloy components, antimatter ingredients). Use freighters for bulk low-priority stuff (iron, silicon). See our [Superalloy Guide](/guides/superalloy-guide/) for priority resource details. This prevents your wormhole link from getting choked with basic materials.</p>
</div>

</div>
</details>

<details class="md-fold">
<summary><span>Troubleshooting Common Freighter Problems</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### Freighter Flies But Delivers Nothing

**Cause:** Export/Import containers are swapped, or the miner is not connected to the Export container.

**Fix:** Check the cargo flow direction. At the outpost, the miner's output must feed into the Export side of the dock.

### Freighter Gets Stuck or Disappears

**Cause:** Power failure at either dock mid-transit. Ships need power at both ends to complete their route.

**Fix:** Add battery backups at both docks. Even a single Battery Bank can keep the dock alive long enough to receive a ship during a brief power dip.

### Outpost Runs Out of Power

**Cause:** Solar panels are not enough if the outpost is in shadow, or you added too many miners.

**Fix:** Replace solar with a Small Reactor at the outpost. The reactor runs on basic fuel and is more reliable than solar for remote sites.

### Freighter Takes Too Long

**Cause:** The outpost is too many sectors away, or you are using a Large Freighter (slow) for a short route.

**Fix:** Use Small Freighters for nearby outposts. Reserve Large Freighters for cross-planet bulk hauls. Or build a Wormhole connection instead (see our [Wormhole Terminal Guide](/guides/wormhole-terminal-guide/) for setup).

### Mining Outpost Gets Attacked

**Cause:** Enemy spawns in hostile sectors.

**Fix:** Build a Missile Turret or Laser Turret at the outpost. One turret is usually enough for early raids. For late-game raids, add Drone Shields.

</div>
</details>

<hr>

<details class="md-fold" open>
<summary><span>Quick Reference — Freighter Setup Cheat Sheet</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

<div class="split-col">
<div class="col">
<h4>At the Mining Outpost</h4>
<ol>
<li>Solar Panels / Small Reactor</li>
<li>Miner on ore vein</li>
<li>Connector: Miner → Storage</li>
<li>Connector: Storage → Dock Export</li>
<li>Freighter Dock (Export = ore out)</li>
</ol>
</div>
<div class="col">
<h4>At the Main Station</h4>
<ol>
<li>Freighter Dock (Import = ore in)</li>
<li>Connector: Dock Import → Buffer Storage</li>
<li>Connector: Buffer → Smelter</li>
<li>Assign freighter ship to the route</li>
<li>Watch one full cycle to verify</li>
</ol>
</div>
</div>

<hr>

<div class="meta-badge">
  <span class="meta-rating rating-a">A-Tier Setup</span>
  <span>Hub-and-spoke with dedicated freighters per route and wormhole for priority resources</span>
</div>
<div class="meta-badge">
  <span class="meta-rating rating-b">B-Tier Setup</span>
  <span>Single freighter per outpost with buffer storage at main station</span>
</div>
<div class="meta-badge">
  <span class="meta-rating rating-c">C-Tier Setup</span>
  <span>Manual resource hauling with personal ship — works but wastes your time</span>
</div>

<p><small style="display:block;text-align:center;color:var(--space-text-dim);margin-top:20px;"><em>Tested across multiple save files at Station Levels 5 through 12. Freight behavior verified in version 1.0.0.2.</em></small></p>

</div>
</details>

---

### External Resources

- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)
- [r/OutworldStationGame on Reddit](https://reddit.com/r/OutworldStationGame/)
- [Official Dev News](https://store.steampowered.com/news/app/3242950)
