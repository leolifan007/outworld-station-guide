---
title: "Resources Complete Guide — Ores, Alloys, Relics & Endgame Materials"
description: "Outworld Station resources guide. Every material from iron ore to antimatter. Where to find it, how to process it, and what to use it for. Processing chains included."
date: 2026-05-09
lastmod: 2026-05-12
draft: false
---

## What Resources Exist and What Are They For?

First time I opened the game, I stared at a wall of mineral names and had no idea what was valuable and what was filler. Is silicon important? Can iron and copper share a line? Let me save you the confusion.

Resources come in four tiers — the higher the tier, the rarer and lower-volume:

| Tier | Type | Examples |
|------|------|----------|
| T1 | Basic Ores | Iron Ore, Copper Ore, Silicon Ore |
| T2 | Processed Metals | Iron Ingot, Copper Ingot, Steel Alloy |
| T3 | High-Tech Materials | Circuit Boards, Alloy Plates, Fuel Rods |
| T4 | Exotic Materials | Alien Relics, Antimatter, Helium-3 |

---

## T1: Basic Ores (Everywhere)

<figure class="content-figure">
  <img src="/outworld-station-guide/images/mining-drills.webp" alt="Mining drills on an asteroid" loading="lazy">
  <figcaption>Mining drill on an asteroid surface. Green highlights = valid placement spots. Closer to vein center = better.</figcaption>
</figure>

### Iron Ore
- **Source:** Mining Drill on any asteroid
- **Use:** Everything — base building material, Iron Plates, basic parts
- **Availability:** ★★★★★ everywhere
- **Advice:** Put your first drill on the nearest asteroid. Don't go hunting for better deposits yet.

### Copper Ore
- **Source:** Mining Drill on asteroids
- **Use:** Circuit boards, power infrastructure
- **Availability:** ★★★★☆ still very common
- **Advice:** Start iron first, then copper. You'll need about half as much copper as iron early on.

### Silicon Ore
- **Source:** Mining Drill on special marked asteroids
- **Use:** Microchips, tech components
- **Availability:** ★★★☆☆ need to look for it
- **Mistake I made:** Mixing silicon and iron on the same line causes jams. Run a separate silicon line. Trust me.

---

## T2: Processed Materials (Through Smelter/Assembler)

### Basic Processing Chain

<figure class="content-figure">
  <img src="/outworld-station-guide/images/processing-chain.webp" alt="Full processing chain from ore to finished goods" loading="lazy">
  <figcaption>Ore → Smelter → Assembler → Finished goods. Worth screenshotting this and keeping it on a second monitor.</figcaption>
</figure>

```
Iron Ore → [Smelter] → Iron Ingot
Copper Ore → [Smelter] → Copper Ingot
Silicon Ore → [Smelter] → Silicon Crystal

Iron Ingot + Copper Ingot → [Advanced Smelter] → Steel Alloy
Iron Ingot + Silicon Crystal → [Assembler] → Circuit Board
```

<div class="callout callout-tip">
  <h4>Line Design Tip</h4>
  <p>Iron and copper can share a container bank in Buffer mode. Keep silicon on its own line — low volume but requires pure throughput, and iron/copper will crowd it out.</p>
</div>

---

## T3: High-Tech Materials (Gets Complicated Here)

### Circuit Board
<figure class="content-figure">
  <img src="/outworld-station-guide/images/circuit-board.webp" alt="Circuit board production line" loading="lazy">
  <figcaption>Circuit boards are THE bottleneck of the mid-game. Nothing else comes close. Target 10-15/sec or your advanced buildings will starve.</figcaption>
</figure>

- **Recipe:** Iron Ingot x2 + Silicon Crystal x1
- **Use:** Every advanced building needs these
- **Target throughput:** 10-15 units/sec
- **Experience:** This will be your biggest bottleneck in mid-game. Prioritize circuit board production over everything else when you hit that stage.

### Alloy Plate
- **Recipe:** Steel Alloy x3 + Copper Ingot x1
- **Use:** Armor, ship construction
- **Target throughput:** 5-8 units/sec
- **Tip:** You don't need these early, but ship construction demands them in bulk. Pre-building the line doesn't hurt.

### Fuel Rod
- **Recipe:** Uranium Ore x2 (requires Chemical Plant)
- **Use:** Small Reactor fuel
- **⚠️ Caution:** Uranium ore only appears on asteroids with the radiation icon. Automate the mining remotely — don't fly over there yourself without protection.

---

## T4: Exotic Materials (Endgame Pursuits)

### Alien Relic
<figure class="content-figure">
  <img src="/outworld-station-guide/images/alien-relic.webp" alt="Alien relic exploration scene" loading="lazy">
  <figcaption>Alien relics — hoard them. The endgame Ark component requirements are no joke.</figcaption>
</figure>

- **Source:** Exploring new planets / beating wormhole invaders
- **Use:** Powerful upgrades, armed drone unlocks
- **Rarity:** Inconsistent but not unobtainable
- **Advice:** Hoard every one you find. Don't spend them on non-essential upgrades. Endgame will demand way more than you expect.

### Antimatter
- **Unlock:** Tech → Antimatter Tech (lategame)
- **Production:** Large Particle Collider (needs to be built first)
- **Use:** Ark ship core component
- **Rarity:** Endgame material, no rush

### Helium-3
- **Source:** Gas Collector on gas giant planets
- **Use:** Fusion Reactor fuel
- **Rarity:** Planet-specific — need to find a gas giant
- **Tip:** Send a scout ship to find gas giants before you start planning fusion power

---

## Planet Resource Quick Reference

| Planet Type | Main Resources | Build Strategy |
|-------------|---------------|----------------|
| Rocky Planet | Iron, Copper | Mining outpost, ship ore to main station |
| Silica Planet | Silicon, Rare Alloys | Develop seriously — silicon is critical |
| Gas Giant | Helium-3 | Just place a Gas Collector and leave it |
| Radiation Belt | Uranium | Radiation hazard — automate remotely |
| Relic Planet | Alien Relics | Bring combat capability |

<div class="pro-tip">
  <p><strong>Core resource principle:</strong> Each production tier should have at least 1.5x the capacity of the tier below it. If T1 ore is 20/sec, T2 smelting needs ~13/sec throughput, and T3 parts should hold 8-10/sec. Processing has losses — upstream MUST have redundancy.</p>
</div>

---

## Resource FAQs

### Q: What's silicon for? I have a pile and don't know what to do with it.
Silicon → Silicon Crystal → Circuit Boards. Every advanced building in mid-game needs tons of circuit boards. Silicon isn't your early-game star, but late-game you can't build anything without it. Dedicate a separate line.

### Q: Iron ore runs out — what then?
Asteroid deposits aren't infinite. Drill long enough and it depletes. Mid-game, send scout ships regularly to find new deposits. My strategy: 2 drills per deposit, leave one slot open for future Advanced Smelter. When the deposit runs dry, pack up and move to the next.

### Q: How do I know if a planet has rare ores?
Build a Telescope → launch a scan satellite. Scan results show mineral types and density per planet. UI displays ore icons with estimated reserves. No Telescope yet? Send a scout ship to check manually.

### Q: What's the right copper-to-iron ratio?
From my testing, roughly 2:1 iron to copper. Iron demand is heavy across everything. Copper's main use is circuit boards. 2 iron drills to 1 copper drill early on — that ratio stays stable for a while.

### Q: How do I mine uranium safely?
Radiation damages your character on approach. Two methods: ① Build a full mini production line on the radiation-zone asteroid (drill + smelter + container), operate from your station remotely. ② Wear a hazmat suit and fly over manually — risky and easy to forget your suit.

### Q: What are Alien Relics actually for?
Unlock powerful upgrade modules + Ark core materials. Don't sell them (there's no sell function, but don't throw them away either). Hoard them. Endgame will make you glad you did.

### Q: Can't find Helium-3?
Only gas giants produce it. Send scout ships to explore the upper-right quadrant of your star map — gas giant density is higher there. Place one Gas Collector and it auto-collects.

### Q: Too many materials, storage is full?
Upgrade to Storage II tech. Add more containers at production line endpoints. Also: use wormholes to separate storage by planet so you're not piling everything in one place.

---

## Processing Chain Cheat Sheet

| Product | Input | Building | Rate |
|---------|-------|----------|------|
| Iron Ingot | Iron Ore x1 | Smelter | 7/sec |
| Copper Ingot | Copper Ore x1 | Smelter | 7/sec |
| Steel Alloy | Iron Ingot x2 + Copper Ingot x1 | Advanced Smelter | 5/sec |
| Circuit Board | Iron Ingot x2 + Silicon Crystal x1 | Assembler | 4/sec |
| Alloy Plate | Steel Alloy x3 + Copper Ingot x1 | Advanced Smelter | 3/sec |
| Fuel Rod | Uranium Ore x2 | Chemical Plant | 2/sec |
| Helium-3 | Gas collection | Gas Collector | 1/sec |

---

<div class="ad-slot" style="margin: 24px 0;">
  <div class="ad-label">— Ad —</div>
  <div class="ad-placeholder">Ad unit (replace with AdSense code before launch)</div>
</div>
