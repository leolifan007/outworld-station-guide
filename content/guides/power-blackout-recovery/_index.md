---
title: "Outworld Station Power Grid Black Start - How to Recover from a Total Station Blackout"
description: "Outworld Station blackout recovery procedure when every reactor has died and all your buildings are offline. Step-by-step power grid restart that works at Station Level 10+."
date: 2026-06-18
publishedAt: 2026-06-20T08:32:00+08:00
publishDate: 2026-06-18T23:00:00+08:00
hidden: true
breadcrumb: Blackout Recovery
lastmod: 2026-06-18
draft: false
category: power
tested: "Black start procedure tested on a Level 12 station with 8 starved reactors."
---

## Everything Is Dead and You Have No Way to Restart

The worst sound in Outworld Station is silence. Your reactors shut down because fuel ran out. Your solar panels cannot handle the full load alone. Your drills stopped. Your assemblers stopped. Even your research lab is dark.

You look at the power screen: 0 kW generation. Everything is red.

I have been through this three times. Each blackout cost me 2-3 hours of recovery. The procedure below is the fastest way back up, tested on a Station Level 12 grid with 8 starved Hydrogen reactors.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Disconnect all reactors from the grid. Power a single reactor from emergency solar. Manually fill its fuel tank. Restart that reactor. Slowly reconnect buildings in priority order. Do NOT reconnect everything at once or you will brown out again.</p>
</div>

<hr>

<details class="md-fold">
<summary><span>How Blackouts Happen (The Cascade)</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### The Death Spiral in 6 Steps

1. **Fuel shortage** - A pipe bottleneck, empty buffer, or broken supply line reduces fuel to your reactors
2. **Reactor shutdown** - One reactor runs dry and goes offline
3. **Grid load spike** - The remaining reactors try to compensate, consuming fuel faster
4. **Cascade failure** - More reactors run dry as fuel consumption spikes
5. **Total blackout** - All reactors offline. Zero grid power.
6. **Dead start trap** - You cannot restart reactors because the pumps that deliver fuel need power from the reactors

### Why Solar Does Not Save You

Solar panels work during blackouts IF they are connected to a working battery. But if your batteries drained during the death spiral, solar alone cannot restart power-hungry equipment like fuel pumps and reactor igniters.

<div class="callout callout-tip">
  <h4>Prevention: The Golden Wire Rule</h4>
  <p>Always run a dedicated power line from your solar + battery bank to your fuel production chain. Even if the main grid dies, this circuit keeps the Cloud Miner and fuel pumps running. This one wire has saved my station twice.</p>
</div>

</div></details>

<hr>

<details class="md-fold">
<summary><span>Step-by-Step Black Start Procedure</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### Phase 1: Isolate and Assess (5 minutes)

1. Open the power grid panel
2. Disconnect ALL power consumers from the grid (use circuit breakers if you have them)
3. Disconnect ALL reactors from the grid
4. Check battery levels. If any battery has >5% charge, save it for step 3

### Phase 2: Bootstrap (10 minutes)

1. Identify your smallest fuel-producing building (usually a single Cloud Miner or a single fuel pump)
2. Connect ONLY that building to your emergency solar array
3. If solar is insufficient, craft portable generators from the Matter Printer (hand-craft mode)
4. Let the fuel building run until it fills a buffer tank to at least 30%

### Phase 3: First Reactor (5 minutes)

1. Connect ONE small reactor directly to the fuel buffer tank
2. Manually start the reactor
3. Connect the reactor output to a single critical load: the fuel production chain
4. Verify: fuel production should now be self-powered

### Phase 4: Load Addition (15 minutes)

Add loads one at a time, in this priority order:

| Priority | Building Type | Why This Order |
|----------|--------------|----------------|
| 1 | Fuel pumps, Cloud Miners | Without fuel, everything dies again |
| 2 | Research Lab (minimum 1) | You need tech points to prevent future blackouts |
| 3 | Drills + Smelters | Raw material production |
| 4 | Assemblers (critical: Electronics, Circuits) | Component production |
| 5 | Storage management | Buffer refill |
| 6 | Defense systems | Raid protection |
| 7 | Secondary production | Everything else |

### Phase 5: Grid Rebalance (10 minutes)

1. Add a second reactor once load exceeds 70% of your first reactor's capacity
2. Rebalance fuel distribution across active reactors
3. Increase buffer tank capacity (double what you had before the blackout)
4. Set up a low-fuel alarm at 25% tank level

{{< diagram src="black-start-recovery-flow.svg" caption="Black start recovery sequence: Isolate -> Bootstrap -> First Reactor -> Load Addition -> Grid Rebalance" >}}

</div></details>

<hr>

## Blackout Prevention Checklist

Use this checklist every time you build a new reactor bank:

- [ ] Dedicated solar circuit for fuel production (isolated from main grid)
- [ ] Buffer tanks hold 20+ minutes of reactor fuel at max burn rate
- [ ] Pipe upgrades match or exceed reactor consumption
- [ ] Low-fuel alarm at 25% tank level
- [ ] Emergency manual start kit (portable generator + fuel canisters)
- [ ] Grid has circuit breakers for sector isolation
- [ ] Battery bank can run critical systems for 5+ minutes

## How Much Buffer You Actually Need

| Station Level | Reactor Count | Fuel Burn Rate | Minimum Buffer Size | Safe Buffer Size |
|:-------------:|:-------------:|:--------------:|:-------------------:|:----------------:|
| 4-6 | 2 Small H2 | 16/min | 320 | 500 |
| 7-9 | 6 Small + 2 Large | 76/min | 1,520 | 3,000 |
| 10-12 | 4 Large | 56/min | 1,120 | 2,500 |
| 13+ | 8 Large | 112/min | 2,240 | 5,000 |

<div class="callout callout-verdict">
  <h4>Hard Rule</h4>
  <p>If your fuel buffer drops below 20%, the system is in danger. Investigate immediately. A full buffer audit takes 2 minutes. Recovering from a blackout takes 2 hours. The math is straightforward.</p>
</div>

<hr>

### Related Guides
- [Hydrogen Fuel Production Guide](/guides/hydrogen-fuel-guide/)
- [Fusion Reactor Guide](/guides/fusion-reactor-guide/)
- [Multi-Source Power Grid Stability](/guides/multi-source-power-grid-stability/)
