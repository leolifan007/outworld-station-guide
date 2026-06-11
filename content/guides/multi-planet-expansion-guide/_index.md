---
title: "Multi-Planet Expansion & Cross-Zone Logistics -- Build Your Second Station Right"
description: "Outworld Station multi-planet expansion strategy: when to build a second station, cross-zone resource planning, wormhole networks, and the zone-pairing system that keeps your empire connected."
date: 2026-06-09
lastmod: 2026-06-09T22:30:00+08:00
draft: false
hidden: true
publishDate: 2026-06-17T13:45:00+08:00
category: logistics
version: 1.0.0.0
breadcrumb: Multi-Planet
emoji: Globe
---

## Your First Station Is Cramped. Do Not Build a Second One Yet.

You unlocked the Planet Scanner at Level 8. You see Gas Giants with infinite hydrogen, Lava Worlds full of rare metals, Ice Worlds with Helium-3. You want to build a second station on every one of them. That is how you end up with three half-built stations, no materials at your main base, and a freighter fleet that spends all day burning fuel moving nothing important.

Multi-planet expansion is not about building more stations. It is about building the right station in the right place with the right logistics backbone. One well-planned second station beats five scattered outposts.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Build your first outpost at Level 6-7 (mining only). Build your second full station at Level 9-10 (specialized production). Use Wormhole Gates for instant cross-zone resource transfer between your main station and your second station. Never build a station that cannot sustain its own power. This guide covers the zone system, station specialization, and the logistics network that holds it together.</p>
</div>

## Quick-Fix: When to Expand Where

| Situation | Solution | Logistics Method | Investment |
|-----------|----------|-----------------|:----------:|
| Need specific ore on another planet | Mining outpost (not a station) | Freighter route | Low |
| Gas vent depleted at main base | Dedicated gas outpost (see [Gas Mining Guide](/guides/deep-space-gas-giant-mining/)) | Cargo Launcher | Medium |
| Main station is physically full | Second production station | Wormhole Gate pair | High |
| Need rare biome resources | Specialized biome station | Wormhole + Freighter hybrid | Very High |
| PvP/PvE zone has better nodes | Relocate main production | Multiple wormholes | Extreme |

**Do not build a second station until you have:** Stable antimatter or fusion power, automated freighter routes, wormhole research complete, and a stockpile of building materials (200+ Hull Parts, 100+ Alloy Panels).

{{< diagram "multi-planet-expansion-flow.svg" >}}

## The Zone System Explained

The galaxy is divided into zones. Each zone has different resource types, danger levels, and connection costs.

### Zone Types

| Zone | Resource Characteristic | Danger Level | Wormhole Cost | Best For |
|------|------------------------|:------------:|:-------------:|----------|
| Starter Zone | Common ores, basic gas | Low | N/A (starting) | Main base, early game |
| Cerberus Belt | Titanium, Tungsten, Nitratium | Low-Medium | 2 Power Cells | First mining outpost |
| Outer Asteroids | Rare metals, Uranium | Medium | 4 Power Cells | Second production base |
| Gas Giant Rings | Hydrogen, Helium-3, Methane | Medium-High | 6 Power Cells | Fuel production |
| Lava Worlds | Deep-core minerals, Quantum Crystals | High | 8 Power Cells | Endgame materials |
| Ice Worlds | Water, Deuterium, Organics | Medium | 5 Power Cells | Biomass + fuel |
| The Void | Arkship materials, endgame resources | Extreme | Special | Endgame only |

### Zone Pairing Strategy

The key insight: pair zones that complement each other. Do not build in two zones that produce the same resources.

| Main Zone | Best Pair Zone | Why |
|-----------|---------------|-----|
| Starter (Terran) | Cerberus Belt | Your base lacks Titanium/Tungsten |
| Cerberus Belt | Gas Giant Ring | Your belt lacks gas resources |
| Lava World | Ice World | Lava lacks water + organics; Ice lacks minerals |

## Building the Second Station

### Phase 1: Scout and Survey

Before you build anything, survey your target zone with a Scout ship:

| Survey Item | What to Look For | Minimum Threshold |
|-------------|-----------------|:-----------------:|
| Resource nodes | 3+ of the resource you need | 5 nodes minimum |
| Gas vents | 2+ different gas types | Hydrogen + 1 other |
| Buildable space | Flat area for 20+ modules | No tight corridors |
| Danger assessment | Hostile spawns nearby | Clear 10-block radius |

### Phase 2: The Starter Pack

Ship these items before you build any station modules:

- 4 Solar Panels + 2 Batteries (power-first rule)
- 1 Cargo Hub + 3 Drones
- 50 Hull Parts + 20 Connectors + 10 Storage Chests
- 1 Gas Extractor + 1 Refinery
- 1 Wormhole Generator (pre-configured to main station channel)

**Deployment method:** Use a dedicated Freighter with max cargo upgrades. Do not split this across multiple trips -- one full freighter load, one landing.

### Phase 3: Wormhole Link

Set up the wormhole connection before you build any production. This is the single most important step.

1. Build Wormhole Generator at main station (Channel 1)
2. Build Wormhole Generator at new station (Channel 1)
3. Power both generators (50/sec each)
4. Test the link -- drop an item in one, check the other
5. Set up Inventory Pairing for key resources

<div class="callout callout-tip">
  <h4>The One-Way Wormhole Trick</h4>
  <p>If you set a wormhole channel to send-only on one end and receive-only on the other, you prevent resource loops. Use this for dedicated supply lines: main station sends building materials TO the outpost; outpost sends rare ore BACK to the main station. Same channel, different direction settings.</p>
</div>

## Cross-Zone Resource Planning

Once both stations are running, you need a resource plan. Here is mine:

| Resource | Produced At | Consumed At | Transport Method |
|----------|-------------|-------------|-----------------|
| Basic Ores | Main station (local) | Main station | Local drones |
| Titanium/Tungsten | Cerberus outpost | Main station smelter | Wormhole |
| Hydrogen/Helium-3 | Gas Giant outpost | Main station power | Cargo Launcher (same system) or Wormhole (cross-system) |
| Quantum Crystals | Lava World station | Main station lab | Wormhole + Freighter backup |
| Superalloy | Main station forge | All stations | Wormhole distribution |
| Building materials | Main station printer | All stations | Dedicated freighter route |

## Real Scenario: My Two-Station Network

At Level 9, my starter station had 18 rooms and zero space for expansion. I was bottlenecked on Titanium and Tungsten -- the only nodes in my system were low-yield. I needed to expand to the Cerberus Belt.

**What I did:** I scouted a Cerberus node cluster with 4 Titanium and 3 Tungsten nodes. Deployed the starter pack via freighter. Built a small 8-room station with dedicated Smelters for both ores, a Wormhole Generator (Channel 1), and a Gas Extractor for local power. The wormhole connected to my main station's storage.

**The result:** Titanium and Tungsten appeared in my main station chests instantly. No freighter wait times. No fuel costs. I expanded the Cerberus station to 14 rooms over the next week, adding a Superalloy Forge that fed directly back to the main base via the same wormhole.

Total setup time: 3 hours from first landing to full automation. Without wormholes, I would have needed 3 freighters running constant routes and burned through 200+ fuel cells per hour.

For detailed wormhole configuration, see the [Wormhole Terminal Guide](/guides/wormhole-terminal-guide/). For freighter route optimization, see the [Interplanetary Logistics Guide](/guides/interplanetary-logistics-guide/).

## Community Resources

- [Steam Guides](https://steamcommunity.com/app/3242950/guides/) _(opens in new tab)_
- [Outworld Station on Reddit](https://www.reddit.com/r/IndieGaming/comments/1ijv6yx/check_out_my_new_space_factory_game_outworld/) _(opens in new tab)_

