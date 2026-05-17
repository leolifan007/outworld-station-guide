---
title: "Superalloy Production Guide: Scale Your Manufacturing"
description: "Outworld Station superalloy production chain, material requirements, factory layouts, and throughput targets. From first batch to 50/sec output."
date: 2026-05-17
breadcrumb: Superalloy
emoji: ⚙️
lastmod: 2026-05-17
draft: false
category: production
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

## Superalloy Is the Gate — And You Are Stuck Outside

Everything past the midgame needs Superalloy. Ships, turrets, drone bays, advanced buildings — all of it. And the production chain to make Superalloy is long, expensive, and extremely easy to bottleneck.

I ran my first Superalloy line for 3 hours before I realized I was producing 2 per second when I needed 15. My ship construction was stalled, my defense was paper-thin, and I couldn't figure out why until I traced the chain backwards. Check our [Beginner Mistakes Guide](/guides/beginner-mistakes/) for similar traps.

This guide covers the full production chain, throughput targets, common bottlenecks, and the layouts that actually produce enough Superalloy to keep your station running.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Superalloy requires Tungsten + Titanium processed through a Superalloy Forge. The bottleneck is almost always Tungsten supply. You need 2 dedicated Tungsten miners per Forge to keep up. Target 10-15 Superalloy/sec for mid-game, 30-50/sec for late-game.</p>
</div>

---

<details class="md-fold">
<summary><span>The Full Superalloy Production Chain</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### Raw Materials

You need two ores:
- **Tungsten Ore** — mined from Tungsten asteroids (rare, usually in the Asteroid Belt or outer planets)
- **Titanium Ore** — mined from Titanium asteroids (common, found in most sectors)

### Processing Chain

{{< diagram src="superalloy-chain.svg" caption="Superalloy production chain combining tungsten and titanium ore through smelters into the forge" >}}

Simple on paper. The problem is volume.

### Ingredient Ratios

| Output | Tungsten Ingot | Titanium Ingot | Time | Power Draw |
|---|---|---|---|---|
| 1 Superalloy | 2 | 1 | 3 sec | 12 power/sec |

A single Superalloy Forge running at full capacity produces **1 Superalloy every 3 seconds**, or about 20 Superalloy per minute.

But "full capacity" means a constant feed of 2 Tungsten Ingot + 1 Titanium Ingot every 3 seconds. That requires:
- **40 Tungsten Ingot/min** → 1 Tungsten Smelter running at full tilt (barely enough)
- **20 Titanium Ingot/min** → 1 Titanium Smelter at moderate capacity

And each Smelter needs a constant stream of ore. Which means your miners need to be producing enough raw ore to feed the smelters that feed the forge.

<div class="callout callout-tip">
  <h4>The Tungsten Trap</h4>
  <p>Tungsten is the bottleneck in almost every Superalloy setup. Tungsten asteroids are rare and often in hostile sectors. Titanium is abundant by comparison. Always secure your Tungsten supply first, then scale Titanium to match. Our [Research Order Guide](/guides/research-order/) covers the optimal unlock sequence.</p>
</div>

</div>
</details>

---

{{< diagram src="superalloy-chain.svg" caption="Superalloy production chain from tungsten and titanium mining through input buffers to the forge and output" >}}



<details class="md-fold">
<summary><span>Building Your First Superalloy Line</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### Step 1: Secure Tungsten

Before building anything, find a reliable Tungsten source. Check your star map for asteroids marked with the Tungsten icon. Ideally, find one that:
- Has 2+ Tungsten veins close together
- Is within 1-2 sectors of your main station
- Does not have heavy enemy activity

Build a mining outpost (see our [Freighter & Mining Guide](/guides/freighter-mining-guide/)) specifically for Tungsten.

### Step 2: Scale Titanium

You probably already have Titanium miners running. If not, set one up. Titanium is common enough that you shouldn't have trouble finding it.

**Minimum Titanium setup:** 2 Miners on Titanium veins → 1 Smelter → Storage Buffer.

### Step 3: Build the Superalloy Forge

Place your Superalloy Forge at your main station, close to your Smelter cluster. The layout should look like this:

{{< diagram src="superalloy-chain.svg" caption="Full superalloy supply chain from remote miners through freighters and smelters into the forge" >}}

### Step 4: Buffer Everything

Put Storage Containers between each stage. This is non-negotiable:
- **Smelter input buffer**: 50+ ore waiting
- **Smelter output buffer**: 30+ ingots waiting
- **Forge input buffer**: 40 Tungsten + 20 Titanium waiting
- **Forge output buffer**: 50+ Superalloy waiting

Without buffers, any hiccup in the chain (freighter delay, power dip, miner relocation) cascades into a complete shutdown.

<div class="callout callout-synergy">
  <h4>Connector Tip</h4>
  <p>Use Mk3 or Mk4 Connectors between the buffer and the Forge. The Forge consumes ingredients fast, and a Mk1 Connector will starve it between cycles. See our [Pipe Bottleneck Guide](/guides/pipe-bottleneck-guide/) for details.</p>
</div>

</div>
</details>

<details class="md-fold">
<summary><span>Scaling to 50 Superalloy/sec</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

One Forge produces ~20/min. Mid-game needs 10-15/sec (600-900/min). Late-game needs 30-50/sec (1800-3000/min). Here is how you get there.

### The Parallel Forge Array

{{< diagram src="superalloy-parallel-forges.svg" caption="Scaling superalloy production with multiple parallel forges sharing a single output buffer" >}}

Each Forge needs its own dedicated input buffers but can share a common output buffer.

### Scaling Targets

| Target Rate | Forges Needed | Tungsten Miners | Titanium Miners | Power Needed |
|---|---|---|---|---|
| 10/sec | 2 | 4 | 2 | ~100 power/sec |
| 20/sec | 4 | 8 | 4 | ~200 power/sec |
| 50/sec | 8-10 | 16-20 | 8-10 | ~500 power/sec |

### The Superalloy Belt

At scale, you want a dedicated production zone — not a few Forges stuck in the corner of your main station.

1. Clear a large area (at least 20x20 building spaces)
2. Build Tungsten Smelters on one side, Titanium Smelters on the other
3. Run parallel input lines to a row of Superalloy Forges
4. Collect all output into a central Superalloy Storage

This is your Superalloy Belt. Feed it with freighters from multiple mining outposts and wormhole links from remote Tungsten sites.

<div class="callout callout-tip">
  <h4>The 2:1 Rule</h4>
  <p>Always maintain a 2:1 ratio of Tungsten to Titanium input. The Forge uses 2 Tungsten + 1 Titanium per cycle. If your ratio drifts, one buffer fills up while the other empties, and your Forge starves. Use Inventory Pairing to balance the flow.</p>
</div>

</div>
</details>

<details class="md-fold">
<summary><span>What Superalloy Is Used For</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

Every advanced building and ship in the game needs Superalloy. Here are the biggest consumers:

| Item | Superalloy Cost | How Many You'll Build | Total Superalloy |
|---|---|---|---|
| Shield Drone Mk1 | 4 | 8-12 | 32-48 |
| Shield Drone Mk2 | 8 | 8-12 | 64-96 |
| Shield Drone Mk3 | 12 | 8-12 | 96-144 |
| Missile Turret | 6 | 4-8 | 24-48 |
| Ion Cannon | 20 | 2-4 | 40-80 |
| Medium Freighter | 15 | 2-4 | 30-60 |
| Large Freighter | 30 | 1-2 | 30-60 |
| Heavy Frame (ship component) | 12 | 25+ | 300+ |
| Advanced Plating (ship component) | 6 | 50+ | 300+ |

**Total mid-game Superalloy demand:** ~800-1,200 units
**Total late-game demand:** ~2,000-5,000+ units

You can see why a single Forge won't cut it past Station Level 8.

</div>
</details>

<details class="md-fold">
<summary><span>Troubleshooting Superalloy Problems</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### Forge Keeps Starving

**Cause:** Not enough Tungsten. This is the #1 problem.

**Fix:** Add another Tungsten mining outpost. Or upgrade your existing Tungsten miners to Mk2.

### Forge Running but Output Is Low

**Cause:** Connector bottleneck. The Forge produces Superalloy faster than the Connector can pull it out.

**Fix:** Use Mk3+ Connectors between the Forge and the output buffer. Check our [Pipe Bottleneck Guide](/guides/pipe-bottleneck-guide/) for detailed diagnosis.

### Tungsten Outpost Gets Raided

**Cause:** Tungsten is often in hostile sectors.

**Fix:** Add a Missile Turret and Drone Bay at the outpost. See our [Drone Defense Guide](/guides/drone-defense-guide/) for outpost defense layouts.

### Ratio Keeps Shifting (Too Much Titanium, Not Enough Tungsten)

**Cause:** Tungsten and Titanium miners have different extraction rates.

**Fix:** Throttle the Titanium Smelter. Use a Connector with lower throughput on the Titanium input, or set a limit on the Titanium buffer (overflow goes to storage instead of the Forge).

</div>
</details>

<hr>

<details class="md-fold" open>
<summary><span>Quick Reference — Superalloy Cheat Sheet</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

<div class="split-col">
<div class="col">
<h4>Minimum Viable Setup</h4>
<ul>
<li>2 Tungsten Miners</li>
<li>1 Titanium Miner</li>
<li>1 Tungsten Smelter</li>
<li>1 Titanium Smelter</li>
<li>1 Superalloy Forge</li>
<li>Buffers at every stage</li>
<li>Output: ~20 Superalloy/min</li>
</ul>
</div>
<div class="col">
<h4>Mid-Game Target (10/sec)</h4>
<ul>
<li>4 Tungsten Miners</li>
<li>2 Titanium Miners</li>
<li>2 Forges in parallel</li>
<li>Freighter supply from 2 outposts</li>
<li>Dedicated power line (100 power/sec)</li>
<li>Output: ~600 Superalloy/min</li>
</ul>
</div>
</div>

<hr>

<div class="meta-badge">
  <span class="meta-rating rating-a">A-Tier Setup</span>
  <span>Parallel forge array with dedicated Tungsten belt, 2:1 ratio enforcement, and buffer at every stage</span>
</div>
<div class="meta-badge">
  <span class="meta-rating rating-b">B-Tier Setup</span>
  <span>2-4 Forges with freighter-supplied Tungsten, no ratio enforcement</span>
</div>
<div class="meta-badge">
  <span class="meta-rating rating-c">C-Tier Setup</span>
  <span>Single Forge, no buffers, hoping it all works out</span>
</div>

## Common Mistakes

### Not Enough Buffer Storage

Each Forge cycle consumes a full stack of ingredients instantly. If your input belt is fed by a single Mk2 Connector, the buffer empties before the Forge finishes, and the next cycle starts late — making output run at 2/sec instead of 5/sec.

**Fix:** Add at least one Large Buffer per Forge on the input side, fed by a Mk3+ Connector. This smooths supply and keeps the Forge at full speed.

### Forgetting Tungsten Mining Speed

Tungsten asteroids have lower yield per minute than Titanium. Players often build one miner for each and wonder why the Tungsten line is always empty. The ratio is roughly 2 Tungsten miners per 1 Titanium miner per forge.

**Fix:** Overbuild Tungsten. If Forges idle waiting for Tungsten, add 2 more miners before scaling anything else.

<p><small style="display:block;text-align:center;color:var(--space-text-dim);margin-top:20px;"><em>Production rates verified in version 1.0.0.2. Ratios and costs may change with future updates — always check your in-game crafting menu for current values.</em></small></p>

</div>
</details>
