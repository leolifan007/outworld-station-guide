---
title: "Gas Systems Guide - Oxygen and Nitrox"
description: "Outworld Station gas system guide. Oxygen keeps you alive. Nitrox keeps your fusion reactor running."
date: 2026-05-13
breadcrumb: Gas Systems
lastmod: 2026-05-13
draft: false
tested: "Gas system ratios verified in v1.0.0.2. Pipe layouts tested with 6+ generators."
---

## Gas Is the Blood of Your Station

Outworld Station has two separate gas systems: Oxygen (O2) and Nitrox. One keeps you breathing. The other keeps your fusion reactor fed. They are separate. They are both critical. And they are both easy to screw up.

Most new players treat gas as an afterthought - build an Oxygen Gen, call it a day, then wonder why their reactor performance keeps dropping.

<div class="callout callout-verdict">
  <h4>Here is the TLDR</h4>
  <p>O2 system = life support (fail = game over). Nitrox system = fusion fuel loop (fail = reactor throttles down). They run independently but both depend on your power grid.</p>
</div>

---

## Chapter 1: The Oxygen System

<figure class="content-figure">
  <img src="/images/ss_2_thumb.jpg" alt="Outworld Station oxygen generator" loading="lazy">
  <figcaption>The Oxygen Generator turns water into breathable O2.</figcaption>
</figure>

### Where Does Oxygen Come From?

Electrolysis. Water (H2O) goes through electrolysis to produce Oxygen (O2) and Hydrogen (H2).

You need an Oxygen Generator, a water source, and power.

### Oxygen System Components

| Component | Job | Requires |
|-----------|-----|----------|
| Water Extractor | Pulls water from the environment | Power |
| Oxygen Generator | Turns water into O2 | Water plus Power |
| O2 Tank | Stores oxygen for later | - |
| Air Recycler | Recycles CO2 from the station air | Power |

### Your Build Order

Step 1: Build 1 Water Extractor
Step 2: Build 2 Oxygen Generators (redundancy)
Step 3: Build 2 O2 Tanks
Step 4: Build 1 Air Recycler
Step 5: Connect to power grid

<div class="pro-tip">
  <p><strong>My experience:</strong> Built one Oxygen Generator. Thought it was enough. It was not. Added a second one and everything stabilized. Always run two.</p>
</div>

---

## Chapter 2: The Nitrox System

<figure class="content-figure">
  <img src="/images/ss_9_thumb.jpg" alt="Outworld Station Nitrox gas processor" loading="lazy">
  <figcaption>Nitrox is a nitrogen-oxygen blend (79 percent N2 plus 21 percent O2).</figcaption>
</figure>

### What Is Nitrox?

Nitrox equals 79 percent Nitrogen (N2) plus 21 percent Oxygen (O2) mixed together.

It is safer to breathe than pure oxygen, but more importantly, it is the primary fuel for your fusion reactor. No Nitrox means your reactor burns through its stored tritium and throttles down.

### Nitrox System Components

| Component | Job |
|-----------|-----|
| Nitrogen Extractor | Pulls nitrogen from asteroids or atmosphere |
| Nitrox Mixer | Mixes N2 and O2 in the right ratio |
| Nitrox Tank | Stores the finished mix |
| Pipeline | Connects everything together |

### How the Nitrox Line Works

Nitrogen Extractor feeds into the Nitrox Mixer, which also receives Oxygen from your O2 system. The mix goes to a Nitrox Tank and then to your Fusion Reactor.

Key point: The Nitrox Mixer needs oxygen from your O2 system AND nitrogen from the extractor. Build the O2 system first.

---

## Chapter 3: How Both Systems Work Together

<figure class="content-figure">
  <img src="/images/ss_18_thumb.jpg" alt="Outworld Station complete gas system" loading="lazy">
  <figcaption>Full gas system: water extraction, oxygen generation, Nitrox mixing, storage, distribution.</figcaption>
</figure>

### Oxygen First, Nitrox Second

Always stabilize O2 before touching Nitrox. Oxygen runs out and you die in about 2 minutes. Nitrox runs out and your reactor throttles down.

### Build Timeline

| Phase | Goal | Gas Config |
|-------|------|------------|
| Early (0-2h) | Survive | O2 Gen x2 plus O2 Tank x2 |
| Mid (2-10h) | Prep Nitrox | Stable O2 plus test Nitrogen Extractor |
| Late (10h+) | Fusion loop | Full Nitrox plus dual O2/Nitrox supply |

### Do Not Mix the Pipes

<figure class="content-figure">
  <img src="/images/ss_12_thumb.jpg" alt="Outworld Station gas pipeline layout" loading="lazy">
  <figcaption>O2 and Nitrox use separate pipe systems. Mixing them drops gas purity.</figcaption>
</figure>

O2 and Nitrox have separate pipe networks:
- Blue pipes: O2 only
- Green pipes: Nitrox only
- Mixing them drops purity

---

## Chapter 4: Common Problems

### Enough O2 but not enough Nitrox. Reactor keeps throttling.
Add more Nitrogen Extractors. Go from 1 to 2-3. Check for pipe blockages.

### Both Generators running but still suffocating?
Check your Water Extractor. It might not be keeping up with demand.

### Air Recycler running but O2 levels dropping?
You might have a leak. Check station segment connections.

<div class="callout callout-danger">
  <h4>Warning: Suffocation Is the Fastest Way to Die</h4>
  <p>If O2 stops, crew takes damage immediately. Open emergency O2 tank, then restore main system.</p>
</div>

---

## Chapter 5: Gas System Ratings

| Stage | Config | Rating | Stability |
|-------|--------|--------|-----------|
| Early (0-2h) | O2 Gen x1 plus Tank x1 | C | Risky |
| Basic (2-5h) | O2 Gen x2 plus Tank x2 | B- | Getting there |
| Solid (5-10h) | O2 Gen x2 plus Recycler plus Tank x2 | B+ | Stable |
| Advanced (10-20h) | O2 plus N2 extractor plus Mixer | A- | Fusion-ready |
| Complete (20h+) | Full O2 plus Nitrox loop | S | Set and forget |

---

<div class="guides-section" style="margin-top:2rem">
<div class="guides-section" style="margin-top:2rem">
  <h2 class="guides-section-title">📖 Continue Reading</h2>
  <div class="guide-grid">
    <a href="/power-management/" class="guide-card must-read" style="text-decoration:none;color:inherit;display:flex;flex-direction:column;">
      <div class="card-tag">⚡ Power</div>
      <h3>Power Management</h3>
      <p>Solar panels to fusion reactors. Grid zoning, battery ratios, and how to never black out again. Your gas system needs stable power to run.</p>
      <div class="card-link">Read →</div>
    </a>
    <a href="/resources/" class="guide-card must-read" style="text-decoration:none;color:inherit;display:flex;flex-direction:column;">
      <div class="card-tag">🪨 Resources</div>
      <h3>Resources Reference</h3>
      <p>Full material list, processing chains, and what you need for each station level. From water extraction to endgame alloys.</p>
      <div class="card-link">Read →</div>
    </a>
  </div>
</div>


## Gas Storage: How Much Is Enough?

A common question: "How many gas tanks do I actually need?" The answer depends on your station size and whether you're running a Fusion Reactor.

**For a medium station (Station Level 6-10):**
- 2 Oxygen tanks (total capacity: ~200 units) — fills in 10-15 minutes with one generator
- 3 Nitrox tanks — needed to buffer fuel for your reactor
- 1 Hydrogen tank (if you're running hydrogen-based systems)

**For a large station (Level 10+):**
- 4-6 Oxygen tanks with 2 generators running in parallel
- Minimum 4 Nitrox tanks — more if you're scaling fusion output
- Consider dedicated tank arrays per production zone

The rule of thumb: if your gas pipes are flashing red during peak consumption, you need 2x the tank capacity, not more generators. Generators add production; tanks add buffer. You need both.

## Why Pipe Length Matters

Gas pipes in Outworld Station have pressure drop over distance. A single Oxygen Generator connected to a tank 50 meters away works fine. The same generator connected to a tank 200 meters away will struggle to fill it.

**Practical limits:**
- Keep generators within 30 meters of their primary tank
- Use short pipe runs between tanks and consumers
- For long-distance gas transport, consider a secondary generator at the destination

I learned this the hard way when my fusion reactor kept stuttering because the Nitrox pipe from my generator was 150 meters long. Adding a second generator at the reactor end fixed it instantly.

## Common Gas Problems and Fixes

| Symptom | Likely Cause | Fix |
|---------|-------------|-----|
| Oxygen drops below 20% | Not enough generators | Add 1 more O2 generator |
| Nitrox production stalls | Hydrogen pipe is full | Add more Hydrogen tanks |
| Fusion reactor flickers | Nitrox supply is intermittent | Add Nitrox buffer tank near reactor |
| Gas pipes show red | Too many consumers on one pipe | Split into 2 pipe networks |
| Generators idle with empty tanks | Power failure | Check grid — gas production needs consistent power |

## Advanced: Gas for Multiple Stations

If you have remote outposts, each one needs its own gas system. Gas doesn't travel through wormholes — each station is self-contained for breathing and power.

**Outpost gas checklist:**
- 1-2 Solar Panels (dedicated, not shared with production)
- 1 Oxygen Generator + 1 tank
- If the outpost has a Fusion Reactor: 1 Nitrox Generator + 2 tanks minimum
- Keep pipe runs short — outposts are small, so this usually isn't an issue

I tried to save resources by piping oxygen from my main station to a mining outpost. It doesn't work — the pressure drop over 300+ meters makes the system useless. Each station needs its own loop.

