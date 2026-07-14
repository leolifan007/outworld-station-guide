---
title: "Economy Walkthrough - Money Progression from Scrap to Millions"
description: "Complete Outworld Station economy guide covering every income stage: early scrap selling, mid-game CPU trading, late-game Exo-Planet extraction, and endgame market manipulation. How to hit 500K credits by Station Level 18."
date: 2026-07-14
lastmod: 2026-07-14T12:40:00+08:00
draft: false
hidden: true
publishDate: 2026-07-21T14:00:00+08:00
version: "1.1"
game_version: "v1.1.0"
category: economy
breadcrumb: Economy Walkthrough
tested: "Income rates measured over 20-hour playthrough from Level 1 to Level 18 on v1.1.1.0."
---

{{< diagram src="economy-progression-phases.svg" caption="Economy progression showing four income phases from scrap selling (Levels 1-6) through CPU trading (Levels 9-14), Exo-Planet ops (Levels 15-18), to endgame market dominance (Levels 18+)" >}}

## Four Stages of Making Money

Credits in Outworld Station come in four distinct phases. Each phase requires a different approach, and skipping a phase means stalling your progression. I tried jumping straight to CPU trading from scrap selling and could not afford the fuel costs. Here is the exact progression that worked.

For trading route specifics once you have CPU control set up, our [Passive Income and Trading Guide](/guides/passive-income-trading/) covers contract optimization and route selection in detail.

{{< callout type="verdict" title="The Short Version" >}}
Phase 1 (Levels 1-6): Sell scrap from asteroids, make 2-5K/hr. Phase 2 (Levels 6-9): Fulfill station contracts, make 8-15K/hr. Phase 3 (Levels 9-14): CPU auto-trading, make 20-50K/hr. Phase 4 (Levels 15+): Exo-Planet extraction, make 100-150K/hr. The jump from Phase 3 to Phase 4 is the biggest income leap in the game.
{{< /callout >}}


## Phase 1: Scrap and Salvage (Levels 1-6)

| Income Source | Rate | How to Do It |
|---------------|------|--------------|
| Sell raw ore to passing traders | 1-3K/hr | Click passing ship →Trade →Select ore |
| Scrap asteroid debris fields | 2-5K/hr | Scout ship →collect debris →sell at station trade terminal |
| Sell excess iron/copper plates | 1-2K/hr | Pair storage to Trade Terminal output |
| Complete station tasks | 3-8K/hr | Check station bulletin board (right side of station menu) |

**Best early money:** Scrapping asteroid debris fields. Build a Scout Ship first (see [First Hour Survival Walkthrough](/guides/first-hour-survival-walkthrough/)), send it to the green-glowing debris patches near your station. Each patch yields 3-5 salvage items worth 200-500 credits at the trade terminal.

{{< callout type="info" title="Quick Tip" >}}
**Scrap tip:** Do not sell everything. Keep iron and copper for building. Sell Titanium and rare debris items (Circuit Boards, Electronics) that you have surplus of. Your building needs come first.
{{< /callout >}}


## Phase 2: Contracts (Levels 6-9)

Once you have a stable production line, station contracts become available:

| Contract Type | Typical Payout | Difficulty |
|---------------|---------------|------------|
| Deliver 200 Iron Plates | 5,000-8,000 credits | Easy |
| Deliver 50 Circuit Boards | 8,000-12,000 credits | Medium |
| Craft and deliver 10 Turrets | 15,000-20,000 credits | Medium |
| Explore and map sector | 10,000-15,000 credits | Medium |
| Deliver 10 Electronics | 12,000-18,000 credits | Medium |
| Set up outpost on nearby planet | 25,000-40,000 credits | Hard |

The contract system is hidden behind the station menu. Right-click your station core and select Station Contracts. A list of available contracts appears, refreshed every 15 minutes of real time.

**Priority strategy:** Always take the Deliver Iron Plates contract when available. You are already producing plates. Extra 5-8K for a 2-minute delivery is free money.

For setting up the production lines that feed contracts, see our [Assembly Line Ratios Guide](/guides/assembly-line-ratios/).


## Phase 3: CPU Auto-Trading (Levels 9-14)

| Setup | Cost | Income |
|-------|------|--------|
| CPU Control unlock | 2,000 TP | →?|
| 1 Freighter + 1 CPU point | 80 Steel + 40 Electronics | 8-12K/hr |
| 3 Freighters + 4 CPU points | 240 Steel + 120 Electronics | 25-40K/hr |
| 4 Freighters + optimized routes | 320 Steel + 160 Electronics | 40-60K/hr |

CPU trading unlocks at Station Level 9 through the Fleet Command System research. Assign a freighter to Auto-Trade task and set a route between two stations with a >30% price gap on Processed Alloys or Electronics.

For CPU system mechanics, see our [Ship CPU Control Guide](/guides/ship-cpu-control-guide/).

{{< resourcegrid ingredient="Trade Good" input="Buy Price" output="Sell Price" ratio="Profit/Trip" >}}
  {{< row item="Processed Alloys" input="38-48 cr" output="65-85 cr" ratio="~30-40 cr" >}}
  {{< row item="Electronics" input="120-160 cr" output="200-280 cr" ratio="~80-120 cr" >}}
  {{< row item="Superalloy" input="250-350 cr" output="450-600 cr" ratio="~200-250 cr" >}}
  {{< row item="Antimatter" input="90-120 cr" output="150-200 cr" ratio="~60-80 cr" >}}
{{< /resourcegrid >}}


## Phase 4: Exo-Planet Extraction (Levels 15+)

This is where income jumps dramatically. With the Exo-Planet Lifter upgrade:

| Setup | Cost | Income |
|-------|------|--------|
| Exo-Planet Ops Centre | 150 Superalloy + 60 Electronics | 80-100K/hr (1 ship) |
| + 2 Vanguards on CPU | 2 ships + 3 CPU points | 100-150K/hr |
| + Multi-Planet Operations (Lv17) | 4,500 TP | 150-200K/hr |
| + Deep Surface Analysis (Lv18) | 6,000 TP | 200-300K/hr (Dark Matter runs) |

Exo-Planet operations are covered in detail in our [Exo-Planet Lifter Guide](/guides/exo-planet-lifter-guide/). The key numbers: one Vanguard Frigate on a Medium planet at 45s transit earns roughly 20K every 6 minutes. Two Vanguards cycling = 200K/hr.

{{< section >}}
## Endgame: Market Cycling (Levels 18+)

Once you have 500K+ capital, you can cycle the market. Station trade terminals refresh their buy/sell prices every 30 minutes. Buy low at one station, sell high at another. A well-optimized freighter fleet running 4+ trade routes can generate 300-500K/hr passively.

**Market cycling strategy:**
1. Monitor prices across 3-4 stations
2. Buy Electronics when they dip below 130 cr
3. Stockpile in station storage (up to 500 units)
4. Sell when prices peak above 250 cr
5. Repeat with Superalloy and Antimatter

{{< /section >}}

{{< section >}}
## Income Comparison Table

| Income Method | Setup Time | Credits/Hour | AFK Factor | Risk |
|--------------|-----------|-------------|------------|------|
| Scrap selling | Instant | 2-5K | Requires manual | Low |
| Station contracts | 10 min | 8-15K | 70% AFK | Low |
| 1 CPU trader | 15 min | 10-15K | 95% AFK | Low |
| 4 CPU traders | 30 min | 40-60K | 95% AFK | Medium |
| Exo-Planet (2 ships) | 20 min | 100-150K | 90% AFK | Low |
| Market cycling | 60 min | 300-500K | 95% AFK | Medium |

{{< /section >}}

{{< callout type="info" title="Community Verification" >}}
All prices from v1.1.1.0 market data. Prices fluctuate by station faction and sector. Exo-Planet yields assume Medium-Rich planets with under 60s transit. Market cycling assumes 500K starting capital.
{{< /callout >}}
