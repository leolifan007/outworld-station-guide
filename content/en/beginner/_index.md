---
title: "Beginner Guide — First Hour Survival & Setup"
description: "Outworld Station beginner tips from someone who already made the mistakes. 60 minutes to your first automated production line. No conveyor belt knowledge required."
date: 2026-05-09
lastmod: 2026-05-12
draft: false
---

## What You'll Accomplish in 60 Minutes

When I first launched Outworld Station, I stared at an empty station and an English-only UI for a solid three minutes. Hit B, didn't know what to build. Built a solar panel, didn't know how to wire it. Spent half an hour without mining a single rock.

This is the guide I needed that day. Follow these steps and you'll have a self-running production line in 60 minutes.

<div class="callout callout-verdict">
  <h4>After This Guide You'll Know How To</h4>
  <p>Navigate the English UI, set up your first power system, run a mining drill, and automate iron ore → iron plates. After that, you can start messing around on your own.</p>
</div>

---

## Phase 1: Getting Started (0-10 min)

### Initial Station Setup

<figure class="content-figure">
  <img src="/outworld-station-guide/images/beginner-hero.webp" alt="Outworld Station initial station core interface" loading="lazy">
  <figcaption>You spawn inside the Station Core. Hit B for the build menu — it's your best friend.</figcaption>
</figure>

You start inside the **Station Core**. Don't panic. Remember one key: **B opens the build menu**.

**Your first three moves:**

1. **Don't build anything yet.** First, drag your station closer to the nearest asteroid. Right-click and hold on the station to drag it. Get as close as possible — the closer you are, the less travel time for your first hour.
2. Press B → **Infrastructure** tab → Build **2 Solar Panels**
3. Build **1 Battery** next to the panels

<div class="pro-tip">
  <p><strong>Mistake I made:</strong> First time, I parked my station way too far from the asteroid. When I built the drill, the connection range wasn't enough. Had to drag the station twice. Lesson: get close first, worry about positioning later.</p>
</div>

### Your Power Setup

<figure class="content-figure">
  <img src="/outworld-station-guide/images/solar-panel.webp" alt="Solar panel array placement guide" loading="lazy">
  <figcaption>Solar panels are your only reliable power source early on. Build at least 4-6.</figcaption>
</figure>

Nothing works without power. Your energy journey goes through three phases:

| Phase | What to Use | How Many |
|-------|-------------|----------|
| First 30 min | Solar Panels | 4-6 |
| 30 min - 3 hrs | Small Reactors | 1-2 |
| 3+ hrs | Fusion Reactor | 1 is enough |

**Don't try to skip solar and rush reactors.** I tried. My production line kept stuttering, drills stopped, everything locked up. Solar isn't permanent, but it buys you stability.

---

## Phase 2: First Automation (10-25 min)

### Mining! Mining!

Build a **Mining Drill** on the asteroid surface:
1. B → Build Menu
2. **Mining** tab → **Mining Drill**
3. Mouse over the asteroid surface — green highlights show valid spots
4. Place it
5. Make sure it's connected to your power grid

**Once the drill runs:** Ore accumulates in the drill's internal storage. But it won't come to you automatically — that's the next step.

### The Invisible Logistics (No Conveyor Belt? Here's How)

<figure class="content-figure">
  <img src="/outworld-station-guide/images/inventory-pair.webp" alt="Inventory Pair interface" loading="lazy">
  <figcaption>Inventory → Pair. This is the single most important mechanic in the game. Memorize it.</figcaption>
</figure>

This is where Outworld Station differs from Factorio — **no conveyor belts, you use Inventory Pairing instead.**

Plain English: You tell the drill "send ore to that storage container over there." The game creates an invisible logistics channel. No belts, no drones, no space taken up.

**How to do it:**
1. Left-click the Mining Drill
2. Click the **Inventory** tab in the popup
3. Under Output, there's a **Pair** button — click it
4. Mouse over your station and select a **Storage Container**
5. Done. Ore will automatically flow to the container

<div class="callout callout-tip">
  <h4>How Logistics Works</h4>
  <p>This game uses demand-driven logistics — materials only move when the consumer needs them. No endless conveyor belts, no jams. The tradeoff is you can't see the pipes, so debugging takes some getting used to.</p>
</div>

### Your First Processing Line

<figure class="content-figure">
  <img src="/outworld-station-guide/images/smelter-line.webp" alt="Smelter + Assembler first automated production line" loading="lazy">
  <figcaption>Smelter + Assembler = your first production line. Pair the inputs and outputs and it runs itself.</figcaption>
</figure>

Ore is coming in. Now turn it into something useful:

1. Build a **Smelter** (Production tab)
2. Click the smelter → Inventory tab
3. Input: click Pair → select the ore storage container
4. Output: click Pair → select an empty Storage Container
5. The smelter starts automatically: Ore → Iron Ingot

Now build an **Assembler**. Pair its input to the ingot container and output to a new container. It'll turn ingots into **Iron Plates**.

Congratulations — you just built your first automated production chain: Mining → Smelting → Assembly → Storage.

---

## Phase 3: Expansion Basics (25-45 min)

### Tech Tree Priority

Press **T** for the Tech Tree. Here's what to research first:

<table class="synergy-table">
  <thead>
    <tr><th>Priority</th><th>Tech</th><th>What It Does</th></tr>
  </thead>
  <tbody>
    <tr><td><span class="meta-badge meta-s">S</span></td><td>Logistics I</td><td>+50% logistics throughput. The most important early tech.</td></tr>
    <tr><td><span class="meta-badge meta-a">A</span></td><td>Power Storage II</td><td>Double battery capacity. No more night-time brownouts.</td></tr>
    <tr><td><span class="meta-badge meta-a">A</span></td><td>Mining Efficiency</td><td>+30% mining speed</td></tr>
    <tr><td><span class="meta-badge meta-b">B</span></td><td>Advanced Smelting</td><td>Unlocks alloy crafting. Entry to tier 2 materials.</td></tr>
  </table>

<div class="pro-tip">
  <p><strong>Don't do what I did:</strong> I rushed Advanced Smelting first, then realized alloys needed materials I didn't have a stable line for. Do Logistics I and Mining Efficiency first. Get your base running smooth before chasing fancy tech.</p>
</div>

### Expanding the Station

Once you have 50+ iron plates and 20+ circuit boards:

1. Build an **Expansion Hub**
2. Choose to expand toward the asteroid (closer to resources = better)
3. New modules can house: research labs, extra storage, defense turrets

### Build Your First Ship

Once your production line is stable, it's time to explore:

1. Research **Shipyard I** in the tech tree
2. Build a **Shipyard**
3. Construct a **Scout Ship**
4. Send it to explore nearby planets — you'll find new resources and wormhole entrances

---

## Phase 4: Three Mistakes You'll Make (45-60 min)

<div class="callout callout-danger">
  <h4>I Made All Three. Don't Be Like Me.</h4>
  <ol>
    <li><strong>Starting a second station too early.</strong> Your first station isn't fully automated yet and you're already building on another planet? Both stations will fail. Get one station self-sufficient first.</li>
    <li><strong>Zero defenses.</strong> First wormhole invasion hits around minute 30. If you don't have 2-3 turrets by then, your station core gets wrecked. Lost my first run this way.</li>
    <li><strong>Not upgrading storage.</strong> Starting storage is 100 units. Your drill fills it fast, then stops. Smelter starves. Whole line locks up. Upgrade to Storage II ASAP.</li>
  </ol>
</div>

---

## 8 Questions New Players Actually Ask

### Q: The UI is all English, any help?
Learn four key terms: B = Build menu, T = Tech Tree, Inventory = storage panel on any building, Pair = link outputs to inputs. Those four got me through the first hour.

### Q: Are solar panels enough?
For starting out, yes. But after 30 minutes you'll need more. Research Reactor Tech I and build a Small Reactor.

### Q: Teammates building random stuff in co-op?
The host can manage player permissions. No explicit permission panel exists, but kick options work. Best advice: agree on roles before starting. Nothing awkward like one guy mining while another builds a starship.

### Q: What does the Battery do?
Stores power. Solar panels don't generate at night (there IS a day/night cycle, shorter than Earth's). Batteries store daytime energy for nighttime use. Build 1-2 early on.

### Q: Why won't my Smelter work?
Three checks: ① Is it powered? ② Is Input paired to an ore source? ③ Is Output paired to a container? Nine times out of ten it's one of these three. I've failed each one at least once.

### Q: Can't find a building in the B menu?
The build menu has category tabs (Infrastructure / Mining / Production / Defense / Tech). Your building might be in a different tab. Also, some buildings need tech research to appear.

### Q: When does the first invasion happen?
Around minute 30. Small bugs, not too strong. But with zero defenses you're toast. Place 2-3 turrets before the 30-minute mark.

### Q: How much storage do I need?
3-4 Storage Containers early on. One container per material type — don't mix them. Mixed storage makes inventory management a nightmare.

Checklist before you go exploring on your own:

- [ ] 4-6 Solar Panels, stable power
- [ ] At least 1 Mining Drill running
- [ ] Iron ore → Ingot → Plate chain established
- [ ] 2-3 Turrets in place
- [ ] First Scout Ship launched
- [ ] Logistics I tech unlocked

<div class="ad-slot" style="margin: 24px 0;">
  <div class="ad-label">— Ad —</div>
  <div class="ad-placeholder">Ad unit (replace with AdSense code before launch)</div>
</div>

---

<p style="text-align:center; font-size:0.8rem; color:var(--cream-dark); margin-top: 32px;">
  <em>Next up: <a href="/automation-guide/">Automation Deep Dive</a> — Master invisible logistics and wormhole supply chains</em>
</p>
