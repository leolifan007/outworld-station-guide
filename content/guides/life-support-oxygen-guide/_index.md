---
title: "Outworld Station Life Support & Oxygen Production Guide - Keep Your Station Breatheable"
description: "Oxygen running out? Here is how to build a self-sustaining life support system that keeps your station crew alive through every expansion phase."
date: 2026-06-09
publishedAt: 2026-06-18T10:00:00+08:00
lastmod: 2026-06-12T12:08:29+08:00
draft: false
category: survival
version: 1.0.0.0
breadcrumb: Life Support
emoji: O2


---

Your crew suffocated because you ignored the oxygen panel for twenty minutes while chasing a belt bottleneck. I know, because I did the same thing.

The short version: build an Oxygen Generator immediately after your first solar panels, pipe it directly into your station's life support grid, and never let CO2 climb above 5%. Here is the full playbook so you don't lose another crew.

## The Quick-Fix Life Support Setup

Outworld Station starts you with oxygen canisters that last about 45-60 minutes. Those canisters are a timer, not a solution. Once they run dry, your crew takes CO2 damage every few seconds. I lost my first crew at station level 3 because I was too busy tinkering with smelting ratios.

**Here is the bare minimum setup that keeps everyone alive:**

1. Research **Basic Life Support** in the biology tree (costs 20 data shards, takes 90 seconds)
2. Place one **Oxygen Generator** on your station frame, within pipe range of your main habitation module
3. Run a pipe from the generator output to the hab module's life support input
4. Place one **CO2 Scrubber** adjacent to the hab module and connect it to power
5. That is it. You are now self-sufficient on oxygen.

This costs about 80 iron and 30 copper, draws 15 kW, and supports 6-8 crew. For your first 2-3 station levels, this is all you need.

<div class="callout callout-tip">
  <h4>Pipe range trick</h4>
  <p>Your life support buildings need to be within 3 tiles of a habitation module's pipe connector. If you place them farther, the game won't give you an error -- it just won't deliver oxygen. Check the pipe connection overlay (press P) to verify the link is solid.</p>
</div>

## Life Support Equipment Comparison

Not all oxygen gear is created equal. Here is what each building actually does and when to upgrade:

| Building | Power Draw | Crew Capacity | Research Cost | Unlock Level | Notes |
|----------|-----------|---------------|--------------|-------------|-------|
| Oxygen Canister (starter) | 0 kW | 4 crew, 45 min | Free | Level 1 | Consumable, must be replaced |
| Oxygen Generator | 15 kW | 6-8 crew | 20 shards | Level 2 | Best early game, run on water |
| CO2 Scrubber (basic) | 8 kW | 8 crew | 15 shards | Level 2 | Removes CO2 from hab air |
| Oxygen Recycler | 35 kW | 16 crew | 80 shards | Level 5 | Reclaims O2 from CO2 output |
| Advanced Scrubber | 25 kW | 24 crew | 120 shards | Level 7 | Combines scrubbing + partial recycling |

<div class="callout callout-warning">
  <h4>CO2 builds faster than you expect</h4>
  <p>A single hab module with 4 crew produces about 3% CO2 per minute. At 10%, crew take -1 HP every 15 seconds. At 20%, that damage doubles. If your scrubber loses power, you have roughly 5 minutes before casualties start. Always keep a spare in inventory.</p>
</div>

## The Mid-Game Transition

When I hit station level 5, my crew jumped from 6 to 12, and the single Oxygen Generator could not keep up. I saw the low-oxygen warning every 10 minutes. That is when I unlocked the **Oxygen Recycler**.

The Recycler changes the game. Instead of generating fresh oxygen from water, it captures the CO2 your crew exhales and splits it back into breathable O2. It uses more power (35 kW vs 15 kW), but it cuts your water consumption by roughly 70%.

{{< diagram "life-support-flow.svg" >}}

**My level 5+ setup that has never failed me:**

- 1x Oxygen Generator (baseline production, covers expansion spikes)
- 1x Oxygen Recycler (handles 80% of steady-state demand)
- 2x CO2 Scrubbers (one active, one backup)
- 150+ kW reserved power capacity (life support failures cascade fast if the grid dips)

<div class="callout callout-verdict">
  <h4>The Recycler is worth the research grind</h4>
  <p>Oxygen Recyclers cost 80 shards and feel expensive at level 5. They are not. A Recycler + single Generator combo handles up to 16 crew with zero external O2 shipments. Without the Recycler, you will need to launch rocket O2 canisters every 30 minutes, which burns through steel and fuel. Research the Recycler before Advanced Alloys. Trust me.</p>
</div>

## What Happens When You Ignore Life Support

During my worst failure, here is how it played out: CO2 hits 10% and you barely notice. At 15%, crew slow down and production drops roughly 20%. At 20%, they start dying every 30 seconds. No crew left means a ghost station. You can respawn them, but they lose all skill progression.

<div class="callout callout-warning">
  <h4>Oxygen starvation vs CO2 poisoning</h4>
  <p>These are two separate systems with separate warnings. Low oxygen (red icon, gas mask symbol) means your generator can't keep up. High CO2 (yellow icon, cloud symbol) means your scrubber is overwhelmed. Fixing one while ignoring the other still kills your crew. Check both panels.</p>
</div>

## Power Planning for Life Support

Every life support building pulls from your grid. Here is what I budget:

| Phase | Crew Count | Total Life Support Power | % of Total Grid |
|-------|-----------|------------------------|-----------------|
| Early (Level 1-4) | 4-6 | 23 kW | 15-20% |
| Mid (Level 5-7) | 8-16 | 75 kW | 25-30% |
| Late (Level 8+) | 16-24 | 130+ kW | 35-40% |

I keep a dedicated battery bank just for oxygen and scrubbers, isolated from my main factory grid. A power spike in the smelting array should not cost me a crew member.

## Related Guides

- [Beginner Mistakes to Avoid](/guides/beginner-mistakes/) - More ways I messed up so you do not have to
- [Research Order Guide](/guides/research-order/) - What to unlock and in what sequence
- [Station Layout Guide](/guides/station-layout-guide/) - Where to place life support modules for best pipe routing
- [Fusion Reactor Guide](/guides/fusion-reactor-guide/) - You will need the power eventually

## External Resources

- [Outworld Station on Steam](https://store.steampowered.com/app/3242950/Outworld_Station/)
- [Outworld Station Subreddit](https://www.reddit.com/r/outworldstation/)
- [Outworld Station Wiki](https://wiki.gg/outworld-station/)
- [Official Outworld Station Discord](https://discord.gg/outworldstation)

