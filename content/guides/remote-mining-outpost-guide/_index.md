---
title: "Outworld Station Remote Mining Outpost Guide - Claim & Automate Ore Patches"
description: "Your starter patch is running dry. Here is the exact process for scouting, claiming, and automating remote mining outposts that feed your station nonstop."
date: 2026-06-09
lastmod: 2026-06-09T22:05:00+08:00
draft: false
hidden: true
publishDate: 2026-06-11T22:50:00+08:00
category: production
version: 1.0.0.0
breadcrumb: Mining Outpost
emoji: ⛏

---

Your starter iron patch is tapped out and the nearest titanium seam is three planets away. Do not panic. You do not need to move your whole station. You need a remote mining outpost.

Here is the fast path. Open the Navigation Console and scan the three nearest planets and two asteroid belts. Any body with a "Claimable" badge next to at least one resource node is a candidate. Click the planet, select the ore patch you want, and hit "Establish Outpost." The game costs you 500 Alloy Plates and 200 Circuit Boards upfront. That gets you a landing pad, a shelter, and a basic power relay. Within thirty seconds an automated hauler arrives to pick up whatever you mine.

Now set your outpost's job queue to the simplest loop possible: Miner -> Buffer Storage -> Cargo Launcher. Do not overthink belts here. One Tier-1 miner on a "Rich" patch fills a small storage crate in about four minutes. That crate launches to your station automatically if you placed the Cargo Launcher within three tile range. You can chain up to five miners per Cargo Launcher before throughput drops. If your station needs a specific ore ratio, use the outpost's production filter to cap each resource. The Cargo Launcher respects those caps. Done. You are now running a remote operation.

The details below handle the edge cases that make or break an outpost, from patch selection to mid-game scaling. Read on only if your current outpost is starving your station or overproducing junk.

<div class="callout callout-tip">
<strong>Keep it local.</strong> Your first outpost should be on a planet inside the same star system as your station. Inter-system hauling costs 3x more fuel per trip and your early-game Cargo Launcher cannot reach that range without a relay network. Stick to one system until you have fusion freighters.
</div>

## Ore Patch Types

Not all patches are worth claiming. Here is the breakdown of what you will find on your first scan:

| Patch Type | Richness | Depth (m) | Miners Supported | Respawn Timer | Best For |
|------------|----------|-----------|------------------|---------------|----------|
| Surface Deposit | Low | 0-5 | 1-2 | 12 hours | Early iron/copper |
| Shallow Vein | Medium | 5-20 | 2-4 | 8 hours | Mid-game titanium |
| Deep Seam | High | 20-50 | 3-6 | 4 hours | Endgame rare ores |
| Asteroid Cluster | Variable | N/A | 2-8 | 2 hours per chunk | Platinum/Uranium |
| Molten Core (Lava Planet) | Very High | 50+ | 4-10 | Permanent | Tungsten/Silicon |

Surface deposits dry up fast. Skip them unless it is your absolute first outpost and the station is starving. Go for Deep Seams or Asteroid Clusters whenever possible. They require a Tier-2 Mining Drill but the uptime difference is dramatic.

<div class="callout callout-verdict">
<strong>Verdict: Claim Deep Seams first, Asteroid Clusters second, Shallow Veins third. Never claim Surface Deposits after hour six of a save. The respawn timer on Surface Deposits is too long to justify the claim tax.</strong>
</div>

## Transport Methods Compared

Getting ore back to your station is the real puzzle. Here are the options you unlock as you progress:

| Method | Range | Cost | Throughput (items/min) | Fuel Cost/Trip | Unlock Requirement |
|--------|-------|------|------------------------|----------------|--------------------|
| Cargo Launcher | 1 system | 200 Alloy, 50 Circuits | 120 | Free (solar) | Outpost built |
| Small Freighter | 3 systems | 800 Alloy, 200 Circuits | 480 | 10 Fuel Rods | Freighter Bay Level 1 |
| Relay Network | Unlimited | 50 Relays + Launcher per jump | 120 per hop | 2 Fuel per relay | Matter Relay tech |
| Bulk Hauler | 5 systems | 2000 Alloy, 500 Circuits | 2400 | 50 Fuel Rods | Freighter Bay Level 2 |

Bulk Haulers are the endgame answer, but do not rush them. A well-placed relay network with three Cargo Launchers beats a single Bulk Hauler for flexibility. I run one Bulk Hauler for high-volume iron/titanium and supplement with relays for rare ores.

{{< diagram "remote-mining-flow.svg" >}}

## Concrete Scenario: The Titanium Starvation Problem

You just researched Advanced Alloy Smelting. Your station needs titanium, fast. The nearest titanium patch is on a planet two sectors away. You have 600 Alloy and 150 Circuits in storage. Here is the exact play:

1. Claim a Deep Seam titanium patch on that planet (500 Alloy, 200 Circuits -- dip into your emergency reserve to cover the 50-circuit gap).
2. Land a single Tier-2 Miner and a Cargo Launcher. Do not build a shelter; the miner counts as habitable space for outpost tax purposes.
3. Set the Cargo Launcher filter to Titanium only, cap at 1000 units. This prevents the buffer from filling with scrap stone.
4. Deploy two Matter Relays between the outpost system and your station system. Each costs 50 Alloy and takes 30 seconds to place.
5. Go back to your station and watch the titanium count climb. Within ten minutes the bottleneck shifts from mining to smelting, which is a good problem to have.

You now have a titanium pipeline that runs 24/7 without a single manual delivery.

## Scaling Up

When one outpost is running smoothly, clone the setup. Each planet can host up to four active outposts before orbital congestion triggers a tax penalty. Expand horizontally across planets before stacking miners on a single patch. The tax scales quadratically per outpost on one body but linearly per planet.

For managing multiple outposts, see the [Freighter Mining Guide]({{< ref "/guides/freighter-mining-guide" >}}) for automated ship-based hauling and the [Station Expansion Blueprint]({{< ref "/guides/station-expansion-blueprint" >}}) for organizing your new resource flows into storage grids.

Once you have three outposts running, your income stabilizes enough to never hand-mine again. That is the milestone. Your station becomes a factory that builds factories, and your only job is deciding which patch to claim next.

## External Resources

- [Official Outworld Station Wiki - Mining](https://outworldstation.wiki/mining)
- [Outworld Station Steam Community Mining Guides](https://steamcommunity.com/app/3242950/guides/)
- [Factorio Remote Outpost Design (concept reference)](https://wiki.factorio.com/Tutorial:Logistic_robot_network)
