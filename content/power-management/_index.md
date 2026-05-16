---
title: "Power Management - Solar Panels to Fusion Reactors"
description: "Outworld Station power system explained. Solar panels, small reactors, fusion reactors, grid zoning, and how to not black out."
date: 2026-05-13
breadcrumb: Power Guide
lastmod: 2026-05-13
draft: false
---

## Power Failure Is the Number One Station Killer

I am not joking. No power equals no drills, no smelter, no oxygen, no breathing. I have lost count of how many times my station went dark because I was too busy building fancy production lines and forgot to check the power grid.

Building generators is easy. Building a reliable power system that does not keel over when you least expect it - that is a different story. This guide covers everything from basic solar panels to a full fusion setup, with all the stupid mistakes I made along the way.

<div class="callout callout-verdict">
  <h4>Here is the Short Version</h4>
  <p>Power management boils down to three things: know how much you are using, know how much you can make, keep 30 percent headroom, and have a backup plan for when things go wrong.</p>
</div>

---

## Chapter 1: Starting with Solar - It Works But Do Not Trust It

<figure class="content-figure">
  <img src="/images/ss_7_thumb.jpg" alt="Outworld Station solar panel array" loading="lazy">
  <figcaption>Solar panels are your only real option in the first hour. Build at least 4-6 to keep basic drills running.</figcaption>
</figure>

### How Much Power Do Solar Panels Actually Give You?

| Type | Output | The Deal |
|------|--------|----------|
| Basic Solar Panel | 50 kW | Cheap, gets the job done, but you will outgrow it fast |
| Advanced Solar Panel | 120 kW | Better efficiency, takes up more space |
| Solar Array (combo) | 480 kW | 4x Advanced panels, need a decent chunk of real estate |

**My early game recommendation:**
- First hour: 2-4 Basic Solar Panels, do not overbuild
- Hours 2-3: Upgrade to 4-6 Advanced Solar Panels

### The One Thing Nobody Warns You About: Nighttime

<figure class="content-figure">
  <img src="/images/ss_5_thumb.jpg" alt="Outworld Station battery storage" loading="lazy">
  <figcaption>Batteries are your night shift. Without them, your station goes dark the second the sun sets.</figcaption>
</figure>

Solar panels produce exactly zero power at night. I found this out the hard way - built a beautiful solar farm, walked away for 15 minutes, came back to a dead station. Fun times.

**The fix is simple: Solar plus Battery combo.**

Here is the ratio that actually works:
- 4 solar panels lead to 2 Basic Batteries
- 6 solar panels lead to 4 Advanced Batteries

Batteries charge during the day and discharge at night. If you get this ratio right, your station runs 24/7 without issue. Get it wrong and you will wake up to a blackout.

---

## Chapter 2: Small Reactors - The Mid-Game Workhorse

<figure class="content-figure">
  <img src="/images/ss_4_thumb.jpg" alt="Outworld Station small reactor" loading="lazy">
  <figcaption>The Small Reactor is your mid-game backbone. Build one and suddenly you stop worrying about nighttime.</figcaption>
</figure>

### When Should You Ditch Solar for a Reactor?

Here is the tell: if you are constantly checking your power meter, it is time. Specific thresholds:

| Indicator | Trigger Point |
|-----------|---------------|
| Average power draw | Over 500 kW consistently |
| Space usage | More than 60 percent of your station roof is solar panels |
| Uranium stock | You have got 500+ uranium sitting around |

### How to Build Your First Reactor

1. Stockpile uranium first. You need 500+ units. Uranium comes from asteroid mining in the belt.
2. Pick a good spot. Reactor needs to be near the station core, and you want a wall between it and your living space.
3. Build the damn thing. Hit B, then Power tab, then Small Reactor.
4. It auto-connects. Reactors hook into your power grid automatically. No extra wiring needed.
5. Do not forget cooling. Seriously. Do not.

<div class="pro-tip">
  <p><strong>The mistake I made:</strong> Built a reactor, skipped the cooling module because I thought it was optional. Temperature hit 98 percent, output dropped from 800 kW to 200 kW, and my entire factory started hitch-skipping. Cooling is mandatory, not a nice-to-have.</p>
</div>

---

## Chapter 3: Fusion Reactors

<figure class="content-figure">
  <img src="/images/ss_10_thumb.jpg" alt="Outworld Station fusion reactor" loading="lazy">
  <figcaption>A fusion reactor is basically cheating. Once you get one running, power anxiety just stops.</figcaption>
</figure>

### Fusion Reactor Specs

| Stat | Number |
|------|--------|
| Power output | 5,000 kW baseline, scales to 20,000+ |
| Fuel burn rate | Shockingly low (tritium plus deuterium) |
| Required tech | Fusion Tech IV |
| Build time | About 30 minutes real-time |

### The Fusion Fuel Loop

Controlled Tritium (T) plus Deuterium (D) produces Helium plus Energy. Requires the Nitrogen Extractor from your gas system.

This is the part that tripped me up. Fusion sounds like a magic box that poops out free power, but it actually needs Nitrox from your gas system to sustain its fuel cycle. No gas system means fusion runs on stored tritium reserves only, and those run out.

---

## Chapter 4: Power Management Strategies

### Strategy 1: Always Have a Backup Plan

Never rely on one power source. Here is the redundancy setup I run:

Primary: Fusion reactor or 2x regular reactors
Secondary: Solar array plus battery bank
Emergency: Standalone emergency batteries isolated from main grid

### Strategy 2: Zone Your Power Grid

<figure class="content-figure">
  <img src="/images/ss_16_thumb.jpg" alt="Outworld Station power grid zoning" loading="lazy">
  <figcaption>Zone your grid so one failure does not take down the whole station.</figcaption>
</figure>

Split the station into three power zones:
- Zone A (Core): Life support, oxygen recycler, reactor control room
- Zone B (Production): Mining drills, furnaces, assembly lines
- Zone C (Expansion): Research modules, storage, future growth

Each zone gets its own battery bank. If Zone B goes down, life support keeps running.

### Strategy 3: Watch Your Warning Signs

| Signal | What It Means | What To Do |
|--------|---------------|------------|
| Battery icon turns red | Storage under 20 percent | Go check generators now |
| Reactor temp over 85 percent | Not enough cooling | Add cooling modules |
| Zone power usage drops | That zone tripped | Check the zone connector |

---

## Common Problems

### Reactor is built but nothing happens
Check: Uranium stock over 500? Cooling installed? Grid connected? You probably missed one.

### Solar works but batteries die before morning
Battery bank is too small. Add more batteries or cut nighttime production.

### Fusion reactor burning fuel way too fast
You do not have a Nitrox system. The reactor is burning through stored tritium without refueling.

---

## Power System Ratings

| Stage | Setup | Rating | Stability |
|-------|-------|--------|-----------|
| 0-1 hour | 4x Basic Solar plus 2x Battery | B | Risky at night |
| 1-5 hours | 6x Advanced Solar plus Small Reactor | A- | Mostly stable |
| 5-20 hours | 2x Small Reactor plus Battery Backup | A | Pretty solid |
| 20+ hours | Fusion Reactor plus Nitrox plus Zoned Grid | S | Forget it exists |

---

<div class="guides-section" style="margin-top:2rem">
  <h2 class="guides-section-title">📖 Continue Reading</h2>
  <div class="guide-grid">
    <a href="/gas-systems/" class="guide-card must-read" style="text-decoration:none;color:inherit;display:flex;flex-direction:column;">
      <div class="card-tag">💨 Gas</div>
      <h3>Gas Systems Guide</h3>
      <p>Oxygen keeps you alive. Nitrox fuels your reactor. Build the gas setup right the first time instead of scrambling when O2 runs low.</p>
      <div class="card-link">Read →</div>
    </a>
    <a href="/automation-guide/" class="guide-card must-read" style="text-decoration:none;color:inherit;display:flex;flex-direction:column;">
      <div class="card-tag">⚙️ Automation</div>
      <h3>Automation Deep Dive</h3>
      <p>Inventory Pairing, wormhole supply chains, bottleneck hunting. Master the invisible logistics system that ties your whole station together.</p>
      <div class="card-link">Read →</div>
    </a>
  </div>
</div>
