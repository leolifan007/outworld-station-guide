---
title: "Fusion Reactor Guide — Never Let Your Station Black Out Again"
description: "Outworld Station fusion reactor fuel management, common failure scenarios, and step-by-step recovery. Real solutions from someone who lost a lv7 station to a fuel crisis."
date: 2026-05-13
lastmod: 2026-05-13
draft: true
---

## What Happens When Your Reactors Run Dry

You are level 7. Production is humming. You finally upgraded from solar to fusion. Life is good.

Then your fusion reactors run out of fuel. Within three minutes, every single building on your station shuts down. Drills stop. Smelters stop. Refineries are dead. Even your emergency solar panels cannot get the chain restarted because the refineries needed to make reactor fuel are powered by... the reactors that just died.

Welcome to the dead station spiral. It happened to me. It happened to DuncanPerham who posted about it in the Steam forums with 11 replies in 9 hours. It will happen to you too if you do not know what you are doing.

<div class="callout callout-verdict">
  <h4>The Cold Truth</h4>
  <p>Fusion power is not set-and-forget. Unlike solar panels that just work as long as the sun is up, fusion reactors consume fuel, and when that fuel runs out, you have a cascading failure that can take hours to recover from.</p>
</div>

---

## Chapter 1: Why Fusion Reactors Run Out of Fuel

### It Is Not a Bug, It Is a Design Trap

The game does a terrible job explaining this: **fusion reactors consume Nitrox gas** as fuel. Not electricity, not magic — Nitrox. And Nitrox is produced by a chain that goes:

Asteroid → Drone Mining → Refinery (separates Oxygen + Hydrogen) → further processing → **Nitrox**

If any link in that chain breaks — power outage, full storage, wrong prioritization on your supply lines — your Nitrox production stops. Your reactors keep burning through whatever is stored. Once the buffer is empty, everything dies.

### The Fuel Consumption Numbers Nobody Tells You

| Reactor Type | Nitrox per Minute | How Long 1 Full Tank Lasts |
|---|---|---|
| Small Fusion Reactor | 12/min | ~8 minutes without resupply |
| Large Fusion Reactor | 30/min | ~5 minutes without resupply |

Yes, you read that right. Your reactors are minutes from death if your Nitrox supply chain is not solid.

<div class="callout callout-tip">
  <h4>What I Learned the Hard Way</h4>
  <p>I had 50+ solar panels sitting unused because I switched to fusion and thought I was done with solar forever. When the reactors died, those solar panels could not power my refineries (they need way more juice), so I could not restart the Nitrox chain. Catch-22.</p>
</div>

---

## Chapter 2: The Three-Phase Recovery Plan

### Phase 1: Emergency Power — Do Not Touch the Reactors

The single biggest mistake people make is trying to restart the fusion reactors first.

**Step-by-step:**

1. **Disconnect all non-critical buildings** from your power grid. Cut power lines to smelters, assemblers, laboratories — everything except life support and basic drills.
2. **Build 10-15 extra solar panels.** Yes, even if you have a fusion setup. You need enough juice to get ONE refinery running.
3. **Drain 1-2 batteries** into a dedicated power sub-grid that only powers a single refinery.
4. **Priority override your drone network** — make sure all mining drones are assigned to asteroid extraction.

<div class="pro-tip">
  <p><strong>Only 10+ hour players know this:</strong> You can manually drag resources between inventories. If you have stored Hydrogen and Oxygen somewhere on your station (from before the crash), you can bypass the refinery and combine them manually to kickstart Nitrox production. Takes 30 seconds but saves you 30 minutes.</p>
</div>

### Phase 2: Restart the Nitrox Chain

Once you have enough solar power to run one refinery:

1. **Build a dedicated Nitrox production line** — Mining Drill → Smelter → Refinery → Nitrox synthesis. Keep this on its own isolated power grid.
2. **Set up a dedicated storage container** for Nitrox that is NOT shared with any other supply chain.
3. **Route the Nitrox output directly to the fusion reactor.** Do not let it go through shared wormholes or inventory pairing.
4. **Let it run for 10 minutes** to build a buffer of at least 200 Nitrox before restarting the reactor.

**Budget fusion starter kit:**
- 1 Small Reactor
- 1 dedicated Refinery for Nitrox
- 1 dedicated Drone for the chain
- 10-12 Solar Panels as emergency backup
- 1 dedicated storage with minimum 200 Nitrox buffer

<div class="callout callout-synergy">
  <h4>Pro Tip for Nitrox Efficiency</h4>
  <p>An Advanced Refinery produces 50% more Nitrox per unit of raw ore than a standard refinery. Research it before switching to fusion — you will need fewer refineries to keep your reactors fed.</p>
</div>

### Phase 3: Reconnect and Stabilize

Once the fusion reactor is running again with a healthy Nitrox buffer:

1. **Reconnect buildings one by one**, starting with critical production.
2. **Monitor your Nitrox consumption** for 15 minutes before adding more buildings.
3. **Spread your power generators** — do not put all reactors in one location. An enemy attack can take out your entire grid.
4. **Keep 30% power headroom** at all times.

---

## Chapter 3: Preventing the Next Blackout

### The Golden Rule: Dedicated Fuel Lines

Do not share your Nitrox supply chain with other production. Your fusion reactor should have its own:
- Dedicated asteroid mining drone
- Dedicated storage container
- Dedicated refinery
- Priority wormhole channel (if using interplanetary logistics)

### The Buffer Rule: 30 Minutes of Fuel

Build a dedicated storage container that can hold at least 400 Nitrox (30+ minutes for a Small Reactor). Set your reactor to auto-pause production at 15% fuel remaining and resume at 50%.

### The Redundancy Rule: Solar + Reactor Hybrid

| Component | Count | Purpose |
|---|---|---|
| Advanced Solar Panels | 20+ | Base load during daytime, emergency power |
| Batteries | 8-10 | Nighttime storage + emergency surge capacity |
| Small Fusion Reactors | 2 | Primary power, one covers if the other goes down |
| Dedicated Nitrox Refinery | 2 | One primary + one backup on a separate grid |
| Nitrox Buffer Tank | 1 | 400+ capacity, never below 30% |

### The Monitoring Rule

The Production Overview (unlocked earlier in 1.0) lets you see input/output rates. Use it to check:
- Is Nitrox production > Nitrox consumption?
- Are buffers increasing or decreasing over the last hour?
- Has your refinery throughput dropped?

---

## Quick Reference: What to Do When the Lights Go Out

<div class="split-col">

<div class="col">
  <h4>If It Just Happened</h4>
  <ol>
    <li>Disconnect non-essential buildings</li>
    <li>Build emergency solar</li>
    <li>Find stored O2/H2 for manual Nitrox jumpstart</li>
    <li>Kickstart one dedicated refinery</li>
    <li>Let buffer build 30 min before reconnecting</li>
  </ol>
</div>

<div class="col">
  <h4>If You Want to Prevent It</h4>
  <ol>
    <li>Keep dedicated Nitrox line (separate grid)</li>
    <li>Maintain 400+ Nitrox buffer</li>
    <li>Run 2 smaller reactors instead of 1 big one</li>
    <li>Keep 20+ solar panels as emergency reserve</li>
    <li>Check Production Overview weekly</li>
  </ol>
</div>

</div>

---

<small style="display:block;text-align:center;color:var(--cream-dark);"><em>This guide is based on my experience and the community discussion that got 11 replies in 9 hours. Shoutout to DuncanPerham and everyone else learning how to keep their stations alive.</em></small>
