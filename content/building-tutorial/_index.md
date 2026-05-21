---
title: "All Buildings Guide — From Solar Panels to the Ark Platform"
description: "Outworld Station complete building guide. Every building across Energy, Production, Defense, Tech, Ship, and Logistics categories. Build order included, trap buildings exposed."
date: 2026-05-09
breadcrumb: Buildings
lastmod: 2026-05-12
draft: false
tested: "Every building stat verified in v1.0.0.2. Build order tested up to Ark Platform."
---

## The Build Order (If You Want to Skip the Thinking)

If you just opened the B menu for the first time and have no idea what to click — follow this order. Don't overthink it.

<div class="split-col">

<div class="col">
  <h4>Phase 1 (0-30 min)</h4>
  <ol>
    <li>Solar Panel x4</li>
    <li>Mining Drill x2</li>
    <li>Smelter x1</li>
    <li>Assembler x1</li>
    <li>Storage Container x2</li>
  </ol>
</div>

<div class="col">
  <h4>Phase 2 (30 min - 2 hr)</h4>
  <ol>
    <li>Small Reactor x1</li>
    <li>Advanced Smelter x1</li>
    <li>Research Lab x1</li>
    <li>Turret x3</li>
    <li>Shipyard x1</li>
  </ol>
</div>

</div>

<div class="split-col">

<div class="col">
  <h4>Phase 3 (2-8 hr)</h4>
  <ol>
    <li>Chemical Plant x1</li>
    <li>Wormhole Generator x2</li>
    <li>Shield Generator x1</li>
    <li>Start second station</li>
  </ol>
</div>

<div class="col">
  <h4>Phase 4 (8 hr+)</h4>
  <ol>
    <li>Fusion Reactor x1</li>
    <li>Missile Launcher x2</li>
    <li>Shipyard II (combat ships)</li>
    <li>Ark Platform</li>
  </ol>
</div>

</div>

<div class="pro-tip">
  <p><strong>Don't follow this blindly.</strong> The game is dynamic. If you stumble on a rare alloy deposit, go ahead and unlock Advanced Smelting early. Rules are for reference, not obedience.</p>
</div>

---

## 5 Buildings New Players Waste Resources On

Pulled from community discussions — these are the most-regretted builds:

**1. Auto Door**
Thought it kept bugs out. Nope, it's just a door that opens automatically when your vehicle approaches. Useless for defense. Don't build it.

**2. Observation Window**
Pure decoration. Looks nice, but early-game materials are scarce. Save this for mid-game aesthetics.

**3. Climate Controller**
Thought it blocked radiation. **It doesn't.** It adjusts internal station temperature — zero effect on automation or defense. Need radiation protection? Use Shield Generator and dedicated radiation-proof modules.

**4. Deceleration Module**
Consumes 20 power/sec to slow down ship turning. I genuinely can't think of a use case for this. Skip it.

**5. Drone Port**
Not completely useless, but expensive to research, takes up huge space, and early production can't feed it. Don't touch drones until you've mastered Inventory Pairing.

<div class="callout callout-danger">
  <h4>Seriously: Don't Build These 3 Before Hour 2</h4>
  <p><strong>Drone Port, Advanced Radar, Multi-function Dock.</strong> These either eat power like candy or require a research path that wastes time. Get your base production stable first.</p>
</div>

---

## Energy Buildings (Always Do These First)

<figure class="content-figure">
  <img src="/images/power-evolution.webp" alt="Energy evolution from solar panels to fusion reactor" loading="lazy">
  <figcaption>From solar to fusion — your energy journey determines your expansion speed. Wrong order = dead production line.</figcaption>
</figure>

### Solar Panel
- **Unlock:** Default
- **Output:** 5 power/sec
- **Recommended:** At least 4-6 early on
- **Reality check:** Good enough to start, but you'll outgrow them fast

### Small Reactor
- **Unlock:** Tech → Reactor Tech I
- **Output:** 25 power/sec
- **Fuel:** Uranium rods
- **⚠️ Requires cooling towers!** My first reactor exploded because I forgot radiators.

<div class="callout callout-danger">
  <h4>Reactor Safety Rules</h4>
  <p>Overheated reactors explode with a 15-unit radius. Place at least 2 Cooling Towers per reactor. Don't put them flush against other buildings. I've blown up at least two reactors learning this.</p>
</div>

### Fusion Reactor
<figure class="content-figure">
  <img src="/images/fusion-reactor.webp" alt="Fusion reactor structure" loading="lazy">
  <figcaption>Fusion reactor: quiet, efficient, endgame power. If you can source the Helium-3.</figcaption>
</figure>

- **Unlock:** Tech → Fusion Tech (lategame)
- **Output:** 100 power/sec
- **Fuel:** Helium-3 (need gas giant collection)
- **Why it's great:** No cooling needed, quiet, ultimate power source

### Energy Progression

| Time | Setup | Total Power |
|------|-------|-------------|
| 0-30 min | 4-6 Solar Panels | 20-30/sec |
| 30 min - 3 hr | 1-2 Small Reactors + some solar | 50-80/sec |
| 3 hr+ | 1 Fusion Reactor | 100+/sec |

---

## Mining & Production Buildings

### Mining Drill
- **Unlock:** Default
- **Output:** 5 ore/sec
- **Placement:** Must be on asteroid surface (green highlighted areas)
- **Gotcha:** Needs Inventory Pairing to auto-ship ore — otherwise it just sits in the drill

### Smelter
- **Unlock:** Default
- **Throughput:** 7 units/sec
- Iron ore → Iron Ingot, Copper ore → Copper Ingot, Silicon ore → Silicon Crystal

### Assembler
- **Unlock:** Tech → Assembly I
- **Use:** Turns ingots/alloys into parts
- **Recipes:** Click the Assembler after building to select recipes

### Advanced Smelter
- **Unlock:** Tech → Advanced Smelting
- **Throughput:** 10 units/sec
- **Use:** Alloys (steel alloy, alloy plates, etc.)

### Chemical Plant
<figure class="content-figure">
  <img src="/images/chemical-plant.webp" alt="Chemical plant layout" loading="lazy">
  <figcaption>Chemical plant = T3 materials hub. Process uranium remotely — radiation is no joke.</figcaption>
</figure>

- **Unlock:** Tech → Chemistry
- **Use:** High-end materials (fuel rods, advanced components)
- **Requires:** Gas resource pipeline

---

## Logistics & Storage Buildings

### Storage Container
- **Base capacity:** 100 units
- **Upgrade (Storage II):** 200 units
- **Three modes:** Buffer / Priority Output / Reserve Stock (details in the Automation Guide)

### Logistics Relay
- **Unlock:** Tech → Logistics II
- **Purpose:** Extends pairing range beyond 200 units
- **Caveat:** Takes up space — avoid if you can plan around the range limit

### Wormhole Generator
<figure class="content-figure">
  <img src="/images/wormhole-gen.webp" alt="Wormhole generator device" loading="lazy">
  <figcaption>Same channel number on two generators = merged cross-planet inventory. Lv3 wormholes push 20 units/sec, enough for three main production lines.</figcaption>
</figure>

- **Unlock:** Tech → Wormhole Tech
- **Use:** Cross-planet inventory links
- **Rule:** Build one at each end, set to the same channel number
- **Upgrades:** Lv1=5 units/sec, Lv3=20 units/sec

---

## Defense Buildings (Don't Skip These)

### Turret
- **Unlock:** Tech → Defense I
- **Ammunition:** Iron plates
- **Range:** 30 units
- **Setup:** At least 2-3 per wormhole entrance
- **Experience:** Lost my first run because I had zero turrets at minute 30. Learned that lesson hard.

### Shield Generator
<figure class="content-figure">
  <img src="/images/shield-gen.webp" alt="Shield generator coverage area" loading="lazy">
  <figcaption>50-unit protection bubble — tanky as hell, but eats 50 power/sec. Don't touch until you have stable power.</figcaption>
</figure>

- **Unlock:** Tech → Shield Tech
- **Coverage:** 50-unit radius
- **Cost:** 50 power/sec (yes, that's a lot)
- **When to use:** After you've upgraded to fusion or have 3+ reactors

### Missile Launcher
- **Unlock:** Tech → Advanced Defense
- **Ammo:** Alloy + explosive components
- **Range:** 80 units
- **Best for:** Big bug threats. Overkill for early-game invasions.

---

## Tech & Ship Buildings

### Research Lab
- **Unlock:** Default
- **Consumes:** Research data packs (1 per 30 seconds)
- **Tip:** Multiple labs in parallel = faster research

### Shipyard (I / II)
- **Shipyard I:** Scout ships, cargo ships
- **Shipyard II:** Combat ships, Ark components
- **My advice:** Build a scout ship first to map nearby systems. Combat ships later — you'll know when you need them.

### Ark Platform
- **Unlock:** Endgame tech
- **Purpose:** Build the Ark ship — your final objective
- **Materials:** Tons of alloy, antimatter cores, alien relics
- **Timeline:** This is not a 2-hour project. Start collecting materials mid-game, build late-game.

---

## FAQs (From the Discord)

### Q: Building placed but not doing anything?
Two things to check. 80% of the time it's power. 20% of the time it's missing Inventory Pairing. Check both.

### Q: Mining Drill not producing?
Three possibilities: ① No power ② Storage full ③ No Output Pair. Number 3 is the easiest to forget.



---

## One Sentence Summary

**Energy → Mining → Smelting → Assembly × Defense = Phase 1.** Get that chain running smooth before touching wormholes, ships, or shields. Skip a step and you'll rebuild it later.

<div class="ad-slot" style="margin: 24px 0;">
  <div class="ad-label">— Ad —</div>
  <div class="ad-placeholder">Ad unit (replace with AdSense code before launch)</div>
</div>
