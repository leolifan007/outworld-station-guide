---
title: "Drone Defense & Shield Guide: Protect Your Station"
description: "Outworld Station drone shields, missile turrets, laser defense, and base protection strategies. Real loadouts that survived raids at Station Level 10+."
date: 2026-05-17
publishedAt: 2026-05-19T11:22:00+08:00
breadcrumb: Drone Defense
emoji: "🛡️"
lastmod: 2026-05-19
draft: false
category: defense
tested: "Defense layouts tested through Station Level 12 raids."
---
## Enemies Show Up — And Your Station Is Made of Cardboard

You are 8 hours in. Production is smooth. You just unlocked Superalloy. Then a raid warning flashes and your entire mining wing gets shredded in 90 seconds.

Defense in Outworld Station is not optional past Station Level 6. The raids scale with your station level, and if your only response is "fly around in your personal ship shooting things," you will lose buildings. I lost three Smelters and a Refinery before I figured out automated defense. Check our [Research Order Guide](/guides/research-order/) to make sure you unlock defense tech on time.

This guide covers every defensive tool in the game — drone shields, turrets, loadouts, and the positioning mistakes I made so you don't have to.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Drone Shields are your first automated defense — they orbit your station and intercept incoming threats. Combine them with Missile Turrets for area denial and Laser Turrets for precision kills. One of each per vulnerable section is the minimum.</p>
</div>

---

<details class="md-fold">
<summary><span>How Raids Work — When and Where They Hit</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

Raids are triggered by:
- **Station Level milestones** (every 2 levels from Level 6 onward)
- **Time elapsed** since the last raid
- **High-value buildings** in exposed positions (miners, storage containers)

### Raid Scaling

| Station Level | Enemies per Wave | Enemy Type | Time Between Raids |
|---|---|---|---|
| 6-7 | 3-5 | Small drones | ~20 min |
| 8-9 | 5-8 | Small + Medium drones | ~15 min |
| 10-11 | 8-12 | Medium + Heavy drones | ~12 min |
| 12+ | 12-20 | Mixed with shielded drones | ~10 min |

### Where They Attack

Enemies target the **nearest unprotected building** to their spawn point. They do not pathfind to your core — they attack whatever is closest. This means:
- Mining outposts on the edge of your station get hit first
- Isolated buildings far from your main cluster are sitting ducks
- Buildings behind walls or turrets are usually ignored in favor of easier targets

<div class="callout callout-tip">
  <h4>Bait Placement</h4>
  <p>Put a cheap decoy building (like a single Solar Panel) at the edge of each sector where enemies spawn. They will waste time attacking the decoy while your turrets and drones thin them out.</p>
</div>

</div></details>

---

{{< diagram src="station-defense-layout.svg" caption="Station defense layout with 4 Drone Bays providing overlapping patrol coverage around the core" >}}



<details class="md-fold">
<summary><span>Drone Shields — Your First Line of Defense</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

Drone Shields are defensive drones that orbit your station in a set radius. When an enemy enters their patrol zone, they engage automatically.

### Stats

| Drone Type | Damage | Speed | Shield HP | Cost | Unlock |
|---|---|---|---|---|---|
| Shield Drone Mk1 | Low | Fast | 50 | 4 Superalloy + 2 Electronics | Station Level 6 |
| Shield Drone Mk2 | Medium | Fast | 100 | 8 Superalloy + 4 Electronics | Station Level 8 |
| Shield Drone Mk3 | High | Medium | 200 | 12 Superalloy + 8 Electronics | Station Level 10 |

### How to Deploy

1. Build a **Drone Bay** at your station
2. Craft Shield Drones in the Drone Bay
3. Set the patrol radius (drag the circle in the UI)
4. Assign drones to the bay — they launch automatically

### Key Detail: Patrol Overlap

One Drone Bay controls up to 4 drones. Their patrol circles can overlap, creating a zone where multiple drones converge on the same target. This is good — overlapping patrol zones = concentrated fire.

**Recommended setup:**
- Place Drone Bays at 3-4 points around your station perimeter
- Set patrol radius to cover the space between your station and the asteroid edge
- Overlap at least 2 patrol circles over your most valuable buildings. For outpost defense, see our [Freighter & Mining Guide](/guides/freighter-mining-guide/).. For outpost defense, see our [Freighter & Mining Guide](/guides/freighter-mining-guide/).

<div class="callout callout-synergy">
  <h4>Drone + Turret Combo</h4>
  <p>Drones are fast but fragile. Turrets are slow but powerful. Use drones to kite enemies into turret range — the drones draw aggro while the turrets do the real damage.</p>
</div>

</div></details>

<details class="md-fold">
<summary><span>Turrets — Area Denial and Precision Kills</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### Missile Turret

- **Range:** Long
- **Damage:** High (AoE splash)
- **Fire Rate:** Slow
- **Best Against:** Groups of small/medium drones
- **Ammo:** Missile Ammo (crafted in Munitions Factory)

The Missile Turret is your workhorse. One or two of these covering your main production area will handle most raids up to Station Level 10. The splash damage means you don't need perfect aim — just fire into the cluster.

**Positioning:** Place on elevated platforms overlooking your station's perimeter. Missiles arc, so height gives you better range.

### Laser Turret

- **Range:** Medium
- **Damage:** High (single target)
- **Fire Rate:** Fast
- **Best Against:** Heavy/shielded drones
- **Ammo:** Energy (draws from your power grid)

Laser Turrets are precision tools. They lock onto a single target and burn it down fast. Use them to pick off shielded drones that Missile Turrets struggle with.

**Positioning:** Place near your most critical buildings (Smelters, Reactors, Storage). Laser turrets have shorter range than missiles, so they need to be close to what they are protecting.

### Ion Cannon (Late Game)

- **Range:** Very Long
- **Damage:** Extreme (single target)
- **Fire Rate:** Very Slow
- **Best Against:** Boss-type enemies and shielded heavies
- **Ammo:** Ion Charge (crafted from Antimatter)

The Ion Cannon is your endgame defense. It one-shots most enemies and two-shots shielded heavies. The downside: it draws massive power (30+ power/sec) and fires once every 15-20 seconds. Make sure your [power grid](/guides/fusion-reactor-guide/) can handle it.

**Positioning:** Central location with clear line of sight to all approach vectors.

<div class="callout callout-tip">
  <h4>Power Warning</h4>
  <p>Laser Turrets and Ion Cannons run on your power grid. If your grid is already tight, adding turrets can push you into a blackout during a raid — which is the worst possible time to lose power. Always keep 20% power headroom before adding energy-based turrets.</p>
</div>

</div></details>

<details class="md-fold">
<summary><span>Defense Layouts That Actually Work</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### Layout 1: The Ring (Station Level 6-8)

```
        [Missile Turret]
            |
[Drone Bay] --- STATION CORE --- [Drone Bay]
            |
        [Missile Turret]
```

Four turrets at cardinal points. Two Drone Bays covering north-south and east-west. Simple, effective for early raids.

### Layout 2: The Shell (Station Level 8-10)

```
[Drone Bay] --- [Missile Turret] --- [Laser Turret]
      |                                    |
   OUTPOST                              MINING WING
      |                                    |
[Laser Turret] --- [Missile Turret] --- [Drone Bay]
```

Six defensive positions forming a shell around your station. Drone Bays on the corners, turrets on the sides. Add Laser Turrets near high-value buildings.

### Layout 3: The Fortress (Station Level 10+)

```
         [Ion Cannon]
              |
[Drone Bay] --- [Missile] --- [Laser] --- [Drone Bay]
     |              |            |              |
  BAIT          PRODUCTION    REACTOR         BAIT
     |              |            |              |
[Drone Bay] --- [Laser]  --- [Missile] --- [Drone Bay]
              |
         [Ion Cannon]
```

Full perimeter defense with Ion Cannons on elevated central platforms, turrets on all sides, and Drone Bays at every corner. Bait structures at the edges draw initial aggro.

<div class="callout callout-synergy">
  <h4>Wormhole Defense</h4>
  <p>If you have a Wormhole connection to a hostile sector, place a Missile Turret and Drone Bay right at the wormhole exit on your side. Enemies that come through get greeted immediately.</p>
</div>

</div></details>

<details class="md-fold">
<summary><span>Common Defense Mistakes</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### Mistake 1: Turrets Without Ammo

Missile Turrets need ammo. If you forget to set up a Munitions Factory or connect it to your turret supply, your turrets are expensive decorations.

**Fix:** Build a Munitions Factory early. Connect it to your Missile Turrets via a Connector chain. Keep a buffer of 50+ ammo at all times.

### Mistake 2: Drones With No Patrol Zone

If you don't set a patrol radius, drones just hover over the Drone Bay and only engage enemies that come within a tiny default radius.

**Fix:** Always set patrol radius. Expand it to cover your vulnerable areas.

### Mistake 3: All Defense on One Side

Enemies can spawn from any direction. If all your turrets face north, a raid from the south walks right through.

**Fix:** Symmetrical defense. If you place a turret on one side, place one on the opposite side too.

### Mistake 4: Forgetting Remote Outposts

Mining outposts get raided too. A single Missile Turret at each outpost is usually enough for early raids.

**Fix:** Build one turret and a small ammo buffer at every remote mining station. The cost is minimal compared to rebuilding a miner. See our [Freighter & Mining Guide](/guides/freighter-mining-guide/) for outpost setup.

### Mistake 5: Power Grid Collapse During Raids

Laser Turrets and Ion Cannons spike your power draw. If your grid was already at 90%, adding turrets pushes it over.

**Fix:** Keep 20% power headroom. Or add a dedicated Small Reactor just for defense systems. Our [Antimatter Power Guide](/guides/antimatter-power-guide/) covers endgame power scaling.

</div></details>

<hr>

<details class="md-fold" open>
<summary><span>Quick Reference — Defense Cheat Sheet</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

<div class="split-col">
<div class="col">
<h4>Early Game (Lv6-8)</h4>
<ul>
<li>2x Missile Turrets at perimeter</li>
<li>2x Drone Bays (4 drones each)</li>
<li>Munitions Factory for ammo</li>
<li>Bait structures at edges</li>
</ul>
</div>
<div class="col">
<h4>Mid Game (Lv8-10)</h4>
<ul>
<li>Add Laser Turrets near core</li>
<li>Expand drone coverage</li>
<li>Defense at remote outposts</li>
<li>Dedicated defense power line</li>
</ul>
</div>
</div>

<div class="split-col" style="margin-top:16px;">
<div class="col">
<h4>Late Game (Lv10+)</h4>
<ul>
<li>Ion Cannons on central platforms</li>
<li>Full perimeter shell defense</li>
<li>Wormhole exit defense</li>
<li>20% power headroom always</li>
</ul>
</div>
<div class="col">
<h4>Emergency Response</h4>
<ul>
<li>If a raid overwhelms you, grab your personal ship</li>
<li>Focus fire on the biggest enemy first</li>
<li>Repair damaged buildings immediately after</li>
<li>Check ammo and drone counts post-raid</li>
</ul>
</div>
</div>

<hr>

<div class="meta-badge">
  <span class="meta-rating rating-a">A-Tier Defense</span>
  <span>Full perimeter shell with Ion Cannons, overlapping drone patrols, and dedicated power</span>
</div>
<div class="meta-badge">
  <span class="meta-rating rating-b">B-Tier Defense</span>
  <span>Ring of Missile Turrets + Drone Bays with bait structures</span>
</div>
<div class="meta-badge">
  <span class="meta-rating rating-c">C-Tier Defense</span>
  <span>Scattered turrets with no patrol zones and no ammo resupply</span>
</div>

<p><small style="display:block;text-align:center;color:var(--space-text-dim);margin-top:20px;"><em>All defense layouts tested in version 1.0.0.2 across multiple Station Levels. Raid patterns and scaling may change with future updates.</em></small></p>

</div>
</details>

## FAQ

**Q: Is Shield Generator worth it?**

Only after you have stable power (fusion level or 3+ small reactors). At 50 power/sec, it'll cripple your early game. Turrets early, missiles mid, shields late.

**Q: How do turrets get ammo?**

They auto-pull iron plates from their paired Inventory link. Keep your iron plate line running and turrets stay fed. Line goes down, turrets go silent.

### External Resources

- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)
- [r/OutworldStationGame on Reddit](https://reddit.com/r/OutworldStationGame/)
- [Official Dev News](https://store.steampowered.com/news/app/3242950)
