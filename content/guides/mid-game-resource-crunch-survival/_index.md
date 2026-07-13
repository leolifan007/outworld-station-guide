---
title: "Outworld Station Mid-Game Resource Crunch - Survive Station Levels 6-9 Without Restarting"
description: "Outworld Station mid-game survival guide for the resource crunch at Station Levels 6-9. How to bridge the gap between starter base and mega-station without hitting a dead end."
date: 2026-07-13
publishedAt: 2026-07-13T10:00:00+08:00
breadcrumb: Mid-Game Crunch
version: "1.1"
game_version: "v1.1.0"
lastmod: 2026-07-14
draft: false
category: strategy
tested: "Crunch survival strategies tested across 4 playthroughs at Station Level 5-9."
---

## The "I Have Nothing to Build" Wall

You hit Station Level 6. You unlock Superalloy Forge, Freighter II, and Advanced Research. Then you look at your resources. You need 200 Superalloy for the Forge. Your Titanium production is 30/min. You need Tungsten. You have no Tungsten source. Your research needs Electronics. Your Electronics assembler is starved for Circuits. Your Circuit line needs Copper. Your Copper is running low.

This is the mid-game resource crunch. It hits every player around Station Level 6-9. Your starter base design no longer scales. You need dedicated resource chains, not a single shared bus.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>The crunch is caused by three things: Titanium shortage, Circuit bottleneck, and Superalloy setup cost. Fix Titanium first (prospect actively, tow an asteroid), then build a dedicated Circuit production line, then tackle Superalloy. Do NOT try to do all three simultaneously.</p>
</div>

{{< callout "info" >}}**v1.1:** The mid-game math has shifted. Hub send rate is up (faster distribution eases bottlenecks), Molecular Recombiner output is roughly halved (replan your recycler math), Superalloy has a new alternative recipe, and Mk2/Mk3 factories raise production throughput. Read the "v1.1 mid-game shifts" section before committing your build order.{{< /callout >}}

<hr>

## v1.1 Mid-Game Shifts

Outworld Station v1.1 rebalances several systems that hit hardest during the Station Level 6-9 crunch. If you are following the priority sequence above, account for these four changes:

### 1. Hub Send Rate Increased

The Hub now distributes resources to stations faster. Bottlenecks that used to form because materials sat in the Hub queue now clear sooner. **Implication:** You can lean on Hub-fed supply lines earlier, and shared-resource stalls between stations are less punishing. Let the Hub carry more of the distribution load instead of hand-towing.

### 2. Molecular Recombiner Output Halved

The Molecular Recombiner now produces roughly half as much per cycle (~50% less). **Implication:** Any recycler-based supply math in your plan is wrong by a factor of about two. Replan how much you feed the recombiner and how many you build — you need roughly twice the recombiner throughput (or recycled input) to hit the same output you expected.

### 3. Superalloy Alternative Recipe

Superalloy now has an **alternative recipe** (a new production path). If the classic Titanium + Tungsten forge route is starving you (the Bottleneck 3 problem above), the alternative path may let you reach Superalloy throughput with a different input mix. **Implication:** You are no longer hard-gated on Titanium+Tungsten alone. Evaluate both recipes against what you actually have stockpiled. See [Superalloy Guide](/guides/superalloy-guide/) for the recipe options.

### 4. Mk2/Mk3 Factories Change Throughput

Mk2/Mk3 factory tiers roughly double (and then exceed) per-building throughput. **Implication:** A single Mk2/Mk3 Superalloy Forge, Smelter, or Fabricator replaces several Mk1 buildings, shrinking the footprint and buffer math of your mid-game chains. Upgrade tier before adding more parallel lines.

**Full recipe breakdown:** See [v1.1 Recipe Changes Guide](/guides/v1-1-recipe-changes-guide/) for every changed recipe and ratio.

<hr>

<details class="md-fold">
<summary><span>The Three Bottlenecks (And How to Break Each)</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### Bottleneck 1: Titanium Shortage

Titanium is the gate material for the mid-game. You need it for Superalloy, ship upgrades, and advanced buildings.

**Symptoms:**
- Superalloy Forge is idle for lack of Titanium
- Shipyard needs 50 Titanium for Freighter II
- Your single Titanium drill produces 20/min - not enough

**Solutions (ranked by effort):**
1. Prospect manually within 200m of your station (fastest)
2. Tow a Titanium-rich asteroid to your station (medium)
3. Build a remote mining outpost on a Titanium deposit (slowest but permanent)

**Break the bottleneck:** Do solution 1 or 2 before building the Superalloy Forge. You need 200 Titanium stockpiled before you start the forge.

### Bottleneck 2: Circuit Starvation

Everything in the mid-game needs Circuits. Research needs them. Electronics need them. Drones need them.

**Symptoms:**
- Research Lab cycles on/off (starving for Circuits)
- Drone Bay shows "Waiting for Components"
- Your main assembler line is slow

**Solutions:**
- Build a dedicated assembler line for Circuits ONLY
- Feed it from a dedicated Copper and Silicon buffer (not shared with main production)
- Target: 30 Circuits/min = 1 Assembler with full copper feed

### Bottleneck 3: Superalloy Setup Cost

The Superalloy Forge costs 200 Superalloy to build. It produces 20 Superalloy/min. The first 10 minutes of operation just pay back its own construction cost.

**Solutions:**
- Do not build the forge until you have 100 Titanium and 100 Tungsten stockpiled
- Build a buffer between the forge and your production line
- Plan for 30 minutes of "forge paying itself back" before you see a net gain

{{< diagram src="mid-game-resource-gap.svg" caption="The mid-game resource crunch: Station Level 6-9 demands Titanium, Circuits, and Superalloy simultaneously. Break each bottleneck one at a time in order." >}}

</div></details>

<hr>

<details class="md-fold">
<summary><span>The Priority Sequence</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### Do These in Order:

| Step | Action | Time | Outcome |
|:----:|--------|:----:|---------|
| 1 | Prospect and find Titanium | 15 min | Titanium source identified |
| 2 | Tow Titanium asteroid or build outpost | 20 min | Steady Titanium income |
| 3 | Build dedicated Circuit line | 20 min | 30 Circuits/min |
| 4 | Stockpile 100 Ti + 100 Tu | 30 min | Ready for Superalloy |
| 5 | Build Superalloy Forge | 10 min | 20 Superalloy/min |
| 6 | Wait for forge to pay itself back | 30 min | Net positive Superalloy |

**Total time to break the crunch:** ~2 hours.

</div></details>

<hr>

<details class="md-fold">
<summary><span>What to NOT Do During the Crunch</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### Anti-Patterns

**DONT 1: Expand to a second planet during the crunch.**
You lack the resources to support one station. Two stations will collapse together.

**DONT 2: Research every available tech.**
Tech Points are precious. Skip weapon upgrades, cosmetic unlocks, and long-range sensors until the crunch is resolved.

**DONT 3: Build more storage.**  
Storage hides the problem. If your storage is full of Iron but you are out of Titanium, you have a Titanium problem, not a storage problem.

**DONT 4: Restart.**
The crunch is normal. Every playthrough hits it. Overcoming it is the point of the mid-game. Restarting just delays the inevitable.

</div></details>

<hr>

## Signals That the Crunch Is Over

- Superalloy stockpile is growing (not just paying for itself)
- Research Lab runs continuously
- All 4 research component types are available
- You can build a new building without checking if you have the materials

Once these are true, you are ready for Station Level 10+ and the endgame.

<hr>

### Related Guides
- [Mid-Game Expansion Strategy](/guides/mid-game-expansion-strategy/)
- [Superalloy Production Guide](/guides/superalloy-guide/)
- [Research Order Guide](/guides/research-order/)
