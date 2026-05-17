---
title: "Antimatter Power Guide: Endgame Energy Strategy"
description: "Outworld Station antimatter power setup, neutron initiator production, radiation shielding, and endgame energy strategy. From fusion to the singularity."
date: 2026-05-17
breadcrumb: Antimatter Power
emoji: ⚛️
lastmod: 2026-05-17
draft: false
category: power
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

## Fusion Was Supposed to Be Enough

You finally got your Fusion Reactors running. Stable power for the first time. You built your Superalloy belt, your defense grid, your freighter network. Then Station Level 10 hits, you add Ion Cannons, three parallel Superalloy Forges, and a Drone Bay expansion — and your fusion grid starts sweating.

By Level 11, fusion cannot keep up. You need antimatter.

Antimatter power is the final energy tier in Outworld Station. It produces 5x more power per reactor than fusion, but the production chain is brutal. This guide walks through the full chain, the radiation shielding requirement, and the layouts that keep your endgame station running without meltdowns.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Antimatter Reactors produce 500+ power/sec each. They require Neutron Initiators as fuel, which come from Uranium processing. You also need Radiation Shielding around the reactor or everything nearby takes damage. Unlock at Station Level 10+ research (see our [Research Order Guide](/guides/research-order/) for the exact tech tree path).</p>
</div>

---

<details class="md-fold">
<summary><span>Power Tier Comparison</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

Before committing to antimatter, make sure you actually need it. Here is how the tiers compare:

| Power Source | Output | Fuel | Fuel Cost | Complexity | Unlock |
|---|---|---|---|---|---|
| Solar Panel | 5/sec | None | Free | Plug and play | Start |
| Small Reactor | 40/sec | Basic Fuel | Low | Easy | Level 4 |
| Fusion Reactor | 120/sec | Nitrox Gas | Medium | Moderate | Level 7 |
| Antimatter Reactor | 500/sec | Neutron Initiators | High | Complex | Level 10 |

### When to Upgrade

- **Solar → Small Reactor:** When you have more than 10 buildings
- **Small Reactor → Fusion:** When you hit Station Level 7 and power demand exceeds 200/sec
- **Fusion → Antimatter:** When total power demand exceeds 600/sec (usually Level 10+)

Do not jump to antimatter early. The production chain is expensive and the radiation shielding adds building overhead. Only upgrade when fusion genuinely cannot keep up.

<div class="callout callout-tip">
  <h4>Hybrid Approach</h4>
  <p>You don't have to replace all fusion reactors. Keep your [Fusion Reactor](/guides/fusion-reactor-guide/) grid as baseline power and add one Antimatter Reactor for peak demand. This is more reliable than going all-in on antimatter.</p>
</div>

</div>
</details>

<details class="md-fold">
<summary><span>The Antimatter Production Chain</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

This is the longest production chain in the game. Buckle up.

```
Uranium Ore → Refinery → Uranium Fuel Rod → Neutron Initiator → Antimatter Reactor
                                         ↘ Radiation Shielding (required)
```

### Step-by-Step

**1. Uranium Mining**

Uranium ore is found in the outer sectors — usually the Junk Yard near Cerberus or deep asteroid fields. It is rare and often in hostile territory.

**Minimum setup:** 2 Uranium Miners + Freighter Dock for transport.

**2. Refinery Processing**

Uranium Ore goes through a Refinery to produce Uranium Fuel Rods. This is a slow process — one Refinery takes 10 seconds per Fuel Rod.

**Minimum setup:** 2 Refineries running parallel to keep up with one Antimatter Reactor.

**3. Neutron Initiator Crafting**

Uranium Fuel Rods are processed into Neutron Initiators in an Advanced Assembler. Each Neutron Initiator requires:

| Input | Quantity |
|---|---|
| Uranium Fuel Rod | 1 |
| Electronics | 2 |
| Superalloy | 1 |

**Minimum setup:** 1 Advanced Assembler with a steady supply of all three inputs. See our [Superalloy Guide](/guides/superalloy-guide/) for Superalloy production.

**4. Antimatter Reactor**

Feed Neutron Initiators into the Antimatter Reactor. One Initiator produces ~60 seconds of full power output.

**5. Radiation Shielding (Critical)**

The Antimatter Reactor emits radiation in a radius around it. Any building within that radius takes gradual damage. Radiation Shielding blocks this damage.

<div class="callout callout-verdict">
  <h4>Do Not Skip the Shielding</h4>
  <p>I built my first Antimatter Reactor without shielding. Within 5 minutes, two adjacent Smelters and a Connector had taken enough damage to stop working. The reactor itself was fine. Everything around it was dying. Build the shielding first.</p>
</div>

</div>
</details>

<details class="md-fold">
<summary><span>Radiation Shielding Setup</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### Shielding Requirements

| Reactor Tier | Radiation Radius | Shielding Required | Shielding Cost |
|---|---|---|---|
| Antimatter Reactor Mk1 | 8 blocks | 12 Shield Panels | 4 Superalloy + 2 Lead each |
| Antimatter Reactor Mk2 | 10 blocks | 16 Shield Panels | 6 Superalloy + 3 Lead each |
| Antimatter Reactor Mk3 | 12 blocks | 20 Shield Panels | 8 Superalloy + 4 Lead each |

### Where to Place Shielding

Build Shield Panels in a ring around the reactor, covering all adjacent buildings. The panels do not need to form a complete wall — they create a radiation dampening field that covers a radius around each panel.

**Optimal layout:**

```
     [Shield] [Shield] [Shield]
  [Shield]  [REACTOR]  [Shield]
     [Shield] [Shield] [Shield]
```

Eight panels in a ring around the reactor. Add more on the sides facing your production buildings.

### Lead Supply

Lead comes from refining certain ore types (check your Refinery recipes). It is not rare but is not something you probably have stockpiled. Set up a dedicated Lead production line before building your first Shield Panels.

<div class="callout callout-synergy">
  <h4>Reactor Placement Tip</h4>
  <p>Put your Antimatter Reactor on the edge of your station, away from production buildings. Even with shielding, having the reactor isolated reduces the risk of collateral damage during setup or if a shield panel gets destroyed in a raid.</p>
</div>

</div>
</details>

<details class="md-fold">
<summary><span>Endgame Power Strategy</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### The Hybrid Grid (Recommended)

```
[Fusion Reactors] → Baseline power (40-50% of demand)
[Antimatter Reactor] → Peak power (50-60% of demand)
[Solar Panels] → Emergency backup (auto-kicks in during blackout)
```

This gives you:
- Stable baseline from fusion (well-understood, easy to fuel)
- High output from antimatter for heavy-demand buildings
- Solar backup to restart the grid if everything else fails

### Power Demand by Station Level

| Level | Typical Demand | Recommended Setup |
|---|---|---|
| 10 | 500-700/sec | 3 Fusion + 1 Antimatter Mk1 |
| 11 | 700-1000/sec | 3 Fusion + 1 Antimatter Mk2 |
| 12 | 1000-1500/sec | 4 Fusion + 2 Antimatter Mk2 |

### Fuel Consumption

One Antimatter Reactor Mk1 running at full capacity consumes:
- 1 Neutron Initiator per 60 seconds
- Which requires 1 Uranium Fuel Rod + 2 Electronics + 1 Superalloy per 60 seconds
- Which requires ~10 Uranium Ore per 60 seconds (from 2 dedicated miners)

Scale your mining accordingly. Running 2 Antimatter Reactors means doubling all of the above.

### The Blackout Recovery Plan

If your Antimatter Reactor runs out of fuel, you lose 500+ power/sec instantly. This can cascade into a full station blackout if your fusion grid cannot absorb the sudden demand shift.

**Recovery steps:**
1. Emergency solar kicks in (if you have solar panels)
2. Shed non-essential buildings (disconnect Defense, Superalloy Forge)
3. Route remaining power to Uranium processing
4. Restart Neutron Initiator production
5. Feed the Antimatter Reactor
6. Reconnect shed buildings

<div class="callout callout-tip">
  <h4>The Solar Safety Net</h4>
  <p>Keep 8-12 Solar Panels connected to a separate power line that feeds only your Refinery and Advanced Assembler. This ensures you can always restart fuel production even during a total blackout. Think of it as your starter motor.</p>
</div>

</div>
</details>

<details class="md-fold">
<summary><span>Common Antimatter Problems</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### Reactor Built but No Power Output

**Cause:** No Neutron Initiators in the fuel input.

**Fix:** Check the entire chain — Uranium Miner → Refinery → Advanced Assembler → Reactor. Any break in the chain means no fuel.

### Buildings Near Reactor Taking Damage

**Cause:** Missing or insufficient Radiation Shielding.

**Fix:** Build Shield Panels in a ring around the reactor. Check the coverage indicator in the reactor's UI.

### Uranium Supply Too Slow

**Cause:** Uranium miners in a hostile sector getting raided, or not enough miners.

**Fix:** Add defense to the Uranium outpost. Or find a second Uranium source and set up another mining route.

### Chain Keeps Breaking Because of Superalloy Shortage

**Cause:** Neutron Initiators need Superalloy. If your Superalloy production is already stretched thin by defense and ship building, adding antimatter fuel demand breaks it.

**Fix:** Expand Superalloy production BEFORE building the Antimatter Reactor. See our [Superalloy Guide](/guides/superalloy-guide/) for scaling strategies.

### Frequent Blackouts After Adding Antimatter

**Cause:** You replaced fusion reactors with antimatter instead of supplementing them. If the antimatter reactor fails, you have no backup.

**Fix:** Keep at least 2 Fusion Reactors online alongside the Antimatter Reactor. Never go all-in on one power source.

</div>
</details>

<hr>

<details class="md-fold" open>
<summary><span>Quick Reference — Antimatter Cheat Sheet</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

<div class="split-col">
<div class="col">
<h4>Build Order</h4>
<ol>
<li>Secure Uranium mining outpost</li>
<li>Set up 2x Refinery for Uranium</li>
<li>Build Advanced Assembler</li>
<li>Craft Radiation Shield Panels</li>
<li>Place Reactor + Shielding</li>
<li>Connect fuel supply line</li>
<li>Keep Fusion as backup</li>
</ol>
</div>
<div class="col">
<h4>Fuel Chain per Reactor</h4>
<ul>
<li>2 Uranium Miners</li>
<li>2 Refineries</li>
<li>1 Advanced Assembler</li>
<li>1 Superalloy/sec dedicated to fuel</li>
<li>~10 Uranium Ore/min</li>
<li>1 Neutron Initiator/min</li>
<li>500 power/sec output</li>
</ul>
</div>
</div>

<hr>

<div class="meta-badge">
  <span class="meta-rating rating-a">A-Tier Setup</span>
  <span>Hybrid grid: Fusion baseline + Antimatter peak + Solar emergency, with dedicated fuel chain</span>
</div>
<div class="meta-badge">
  <span class="meta-rating rating-b">B-Tier Setup</span>
  <span>Single Antimatter Reactor with Fusion backup, minimal shielding</span>
</div>
<div class="meta-badge">
  <span class="meta-rating rating-c">C-Tier Setup</span>
  <span>All-in on Antimatter with no backup power and no solar safety net</span>
</div>

<p><small style="display:block;text-align:center;color:var(--space-text-dim);margin-top:20px;"><em>Power values and production rates verified in version 1.0.0.2. Always check in-game values as they may change with updates.</em></small></p>

</div>
</details>
