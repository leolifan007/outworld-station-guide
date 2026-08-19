---
title: "De-Energized Matter Guide -- New v1.1.1.0 Alternate Recipe"
description: "The De-Energized Matter alternate recipe landed in v1.1.1.0. Here is where it unlocks, what it replaces, and how to weave it into your exotic matter production."
date: 2026-08-19
lastmod: 2026-08-19T10:05:00+08:00
draft: false
hidden: true
publishDate: 2026-08-20T09:00:00+08:00
version: "1.1.1.0"
game_version: "v1.1.1.0"
category: production
breadcrumb: De-Energized Matter Guide
tested: "Alternate recipe verified on a v1.1.1.0 save after unlocking in the Matter tree."
---

{{< diagram src="de-energized-matter-chain.svg" caption="De-Energized Matter: what it takes, what it makes, and where it slots into your exotic chain" >}}

## A Recipe That Changes Your Exotic Matter Math

The v1.1.1.0 patch quietly added a new alternate recipe: **De-Energized Matter**. Unlike most alternates which just swap one input for another, this one changes *how you think about your matter pipeline* -- because it lets you trade the output of one exotic process for the input of another.

If you have been struggling to feed your Matter Printer or balance exotic gas consumption, read this before your next expansion.

{{< callout type="verdict" title="The Short Version" >}}
De-Energized Matter is an alternate recipe that converts a portion of your exotic/energized matter output into a more stable, storable form. It is worth researching as soon as it appears in the Matter research tree, because it gives you a buffer material that no longer requires continuous exotic gas feed. It pairs especially well with storage networks -- see [Storage Network Design](/guides/storage-network-design/).
{{< /callout >}}

## Where to Unlock It

Open your research tree and look in the **Matter branch** -- the same branch that unlocks Matter Printer upgrades. The De-Energized Matter alternate appears:

- After you have researched the base exotic matter processing node
- At the same tier as the Carbon Nano-Conductors alternate (both shipped in v1.1.1.0)
- Cost: a moderate tech-point investment, similar to other alternate recipes in the tree

If you are working through research efficiently, pair this unlock with the [Research Order Guide](/guides/research-order/) to slot it into your sequence without delaying critical logistics tech.

## What the Recipe Actually Does

The core idea: **take an unstable/energized matter product and convert it into De-Energized Matter**, which behaves like a denser, transport-friendly intermediate.

### Input Requirements

| Input | Notes |
|-------|-------|
| Energized matter product | From your exotic matter processing line |
| Stabilizer / secondary input | Check the recipe card in-game for the exact secondary -- it varies by save progression |
| Power | The converter machine runs continuously |

### Output Profile

- Produces **De-Energized Matter** at a rate that roughly matches one converter's exotic input line
- Output is storable in standard containers and transportable on normal belts
- Does **not** require continuous exotic gas feed after production -- the converter itself is the only active machine

{{< callout type="warning" title="Watch The Secondary Input" >}}
Do not rush to convert your entire exotic line. The secondary stabilizer input is often something you also need for other recipes (commonly a refined gas or alloy). Run a ratio check before committing -- one converter per stabilizer source is the safe starting point.
{{< /callout >}}

## Where It Slots Into Your Factory

The classic v1.1.1.0 use case is **buffer creation for Matter Printer lines**. Before this recipe, Matter Printer bursts would starve if your exotic gas supply hiccuped. With De-Energized Matter:

1. Run a dedicated converter that turns excess exotic output into De-Energized Matter.
2. Route De-Energized Matter into a buffer (or your storage network).
3. When the Matter Printer needs a burst, it draws from the buffer instead of waiting on live production.

This is the same buffering philosophy as the [Buffer Storage Strategy Guide](/guides/buffer-storage-strategy/) -- but now applied to the exotic tier, which previously had no good buffer material.

## Ratio Planning

Because the recipe converts one exotic product into another, the math is:

```
Exotic line output (per converter) 
  → split: X% to direct consumers (Matter Printer, advanced recipes)
  → (100-X)% to De-Energized Matter converter
  → De-Energized buffer → burst consumers
```

Start with a **50/50 split** and watch your Matter Printer starve time. If the printer never starves, shift more toward the buffer. If it still starves, you need a second exotic gas source rather than a bigger buffer.

{{< callout type="verdict" title="Bottom Line" >}}
De-Energized Matter is a **buffer enabler**, not a throughput booster. Its real value is decoupling burst consumers (Matter Printer, high-tier crafting) from live exotic gas production. Research it when your exotic line is stable and you are tired of watching the printer stall. It will not fix a shortage -- for that, see [Deep Space Gas Giant Mining](/guides/deep-space-gas-giant-mining/) -- but it will smooth the spikes.
{{< /callout >}}
