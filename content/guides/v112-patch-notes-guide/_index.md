---
title: "v1.1.2.0 Patch Notes Guide -- 5 New Features and 10 Fixes Explained"
description: "The September beta adds Arkship Terminal missions, a Station Prestige system, pipe gas switching, and safer factory output logic. Here is everything in v1.1.2.0 and what it changes for your station."
date: 2026-09-24
publishedAt: 2026-09-24T20:41:00+08:00
lastmod: 2026-09-24T20:41:00+08:00
draft: false
version: "1.1.2.0"
game_version: "v1.1.2.0"
category: reference
breadcrumb: v1.1.2.0 Patch Notes Guide
tested: "Change list cross-checked against the official Steam beta announcement (September 23, 2026). v1.1.2.0 is on the BETA branch -- details may shift before the stable release."
---

{{< diagram src="v112-patch-highlights.svg" caption="v1.1.2.0 at a glance: 5 new features, 10 fixes, and the two systems that change the endgame" >}}

## The Patch That Quietly Adds An Endgame

On September 23, 2026, Trickjump Games pushed **v1.1.2.0** to the Beta branch. There was no cinematic trailer and no splash screen -- just a short "NEW BETA" post -- but this one matters more than the last two updates combined. It introduces **Arkship Terminal missions** and a **Station Prestige** progression layer, the first genuinely new post-campaign systems since launch.

If you only read one line: v1.1.2.0 finally gives players something to *do* after the credits roll. Everything else is quality-of-life tuning on pipes, factories, and freighters.

{{< callout type="verdict" title="The Short Version" >}}
v1.1.2.0 is a content patch disguised as a maintenance patch. Two new systems -- Arkship Terminal missions and Station Prestige levels -- extend the game past the campaign. Three smaller changes (pipe gas switching, factory output gating, and Bio-Extractor tech scaling) change how you build production and fluid networks. Ten bug fixes clean up freighters, upgrades, and the multi-select tool. No recipe values were rebalanced, so your existing ratios still hold.
{{< /callout >}}

## Is v1.1.2.0 Out Yet?

This is the question everyone asks first, so here is the honest answer: **v1.1.2.0 is currently a Beta branch build**, announced on September 23, 2026.

Looking at the pattern from the previous cycle, the v1.1.1.0 Beta landed on July 8 and the stable release followed on July 22 -- roughly two weeks. If the team keeps that cadence, expect the stable build in early October. Until then you can opt in through the Beta branch to test the new systems on your own save.

Because this is still a beta, treat every number in this guide as provisional. The feature list is firm; the tuning is not. We will fold final values into the follow-up guides once the stable build ships, just as we did after the [v1.1.1.0 patch](/guides/v111-patch-notes-guide/).

## The 5 New Features

### 1. Arkship Terminal Missions

After you launch the Arkship and finish the campaign, the Arkship Terminal now offers **randomly generated missions**. Completing them rewards **Station Prestige Points**. This is the single biggest addition in the patch and the reason the endgame finally has a loop. We break the full workflow down in the [Arkship Terminal Missions Guide](/guides/arkship-terminal-missions-guide/).

### 2. Station Prestige Levels

Prestige Points feed a new **Station Prestige Level** track. Each time you level up you receive **random rewards**, including new **Decoration Elements**, **Tech Points**, and more. It is a long-tail progression system layered on top of the campaign rather than a replacement for it -- see the [Station Prestige Level Guide](/guides/station-prestige-level-guide/) for what to expect at each tier.

### 3. Pipe Gas & Liquid Switching Without Venting

You no longer have to **vent an empty pipe before filling it with a different gas or liquid**. If a line is empty, you can repurpose it directly. This removes a long-standing friction point when re-tooling fluid networks, and it is covered in the new [Pipe Gas Switching Guide](/guides/pipe-gas-switching-guide/).

### 4. Factory Output Gating

Factories **will not start producing until they can accommodate what is being produced in their Output**. In practice this means a machine holds off rather than stuffing a full output buffer and stalling the line. It is a subtle but real change to how throughput behaves at saturation -- worth revisiting if you tune around [overflow sinks](/guides/overflow-sink-management-guide/).

### 5. Bio-Extractor Tech Scaling

The **Bio-Extractor now takes the Miner Output tech upgrade into account**. For biomass-heavy stations, this means your organic chains scale with research the way your ore chains always have. Recheck your biomass processing numbers once you update.

## The 10 Bug Fixes

| Fix | Why it matters |
|-----|----------------|
| Rotating dishes (fuel bays etc.) no longer respawn when switching zones | Cosmetic state finally sticks across zone loads |
| Tugs now handle Large Ship Component deliveries with filters set | Freighter logistics no longer silently drops parts |
| CTRL+V pastes module links correctly | Blueprint and link sharing works as labelled |
| Factories stop over-producing when the Output is full | Waste and backpressure cleaned up |
| Modules un-highlight correctly after Servitor Bot repairs | You no longer chase "damaged" modules that are already fixed |
| Placing upgraded smelters respects default Max Input/Outputs | Upgrades no longer inherit wrong rate caps |
| Renaming a Freighter updates its panel immediately | Fleet management feedback is instant |
| Upgrades now count items in Quantum Storage | Inventory totals stop under-reporting |
| Advanced Freighter settings transfer on upgrade | You keep your custom routing |
| Filters > Copy To All fixed | Bulk filter setup works again |

Several of these target the freighter and upgrade flows that players flagged as confusing, and they pair well with the tools added in v1.1.1.0. If your fleet panel has been lying to you, your freighter monitoring workflow is worth a fresh look after the update.

## What Was NOT Changed

| Area | Status |
|------|--------|
| Recipe input/output values | Unchanged since v1.1.0 |
| Hub throughput (90/min) | Unchanged |
| Recycler Points pool | Unchanged |
| 540 items/min logistics cap | **Still present** |
| Smelter speed bug | **Still present** (dev investigating) |

Your v1-era ratios are still correct. The single source of truth for recipe numbers remains the v1.1 recipe reference, and nothing in this patch overrides it.

{{< callout type="warning" title="Beta Caveat" >}}
Everything above reflects the September 23 beta announcement. Trickjump has a history of tuning numbers between a beta and its stable release, so do not rebuild a 200-hour factory around provisional values. Play the systems, learn the shape of them, and wait for the stable build before you commit to hard numbers.
{{< /callout >}}

## Should You Update?

**On a second save or the Beta branch, yes.** The Arkship mission and Prestige systems are exactly the endgame hook the community has been asking for, and the pipe and factory changes are pure wins. On your main save, be more careful: it is a beta, and beta saves can occasionally break. Our [Save Backup Guide](/guides/save-backup-guide/) has the two-minute procedure to protect a long-running station before you opt in.

If you have already finished the campaign and drifted away, this is the update designed to pull you back.

## What's Next

Watch the Steam news feed for the stable 1.1.2.0 release, then check back here -- we will publish the final numbers and update the five new guides with confirmed data. The developer also continues to collect save files for the smelter speed bug, so if you can reproduce it, a save upload helps everyone.
