---
title: "Carbon Nano-Conductors Guide -- New v1.1.1.0 Alternate Recipe"
description: "Carbon Nano-Conductors are the v1.1.1.0 alternate that cuts your rare conductor dependency. Here is the unlock, the recipe, and the factory redesign it enables."
date: 2026-08-19
lastmod: 2026-08-19T10:10:00+08:00
draft: false
hidden: true
publishDate: 2026-08-20T09:00:00+08:00
version: "1.1.1.0"
game_version: "v1.1.1.0"
category: production
breadcrumb: Carbon Nano-Conductors Guide
tested: "Recipe and ratios verified on a v1.1.1.0 save; compared against pre-patch conductor consumption."
---

{{< diagram src="carbon-nano-conductor-chain.svg" caption="Carbon Nano-Conductors: common inputs in, rare conductor pressure out" >}}

## The Circuit-Belt Rescue Recipe

If your mid-game is bottlenecked on **conductors** -- the rare materials that feed circuits, modules, and advanced manufacturing -- the v1.1.1.0 Carbon Nano-Conductors alternate recipe is the patch's quietest win.

It is the second of the two new alternates shipped on July 22 (the other being [De-Energized Matter](/guides/de-energized-matter-guide/)), and it directly attacks the most common mid-game wall: conductor scarcity.

{{< callout type="verdict" title="The Short Version" >}}
Carbon Nano-Conductors lets you produce a conductor-tier item from **carbon-heavy common inputs** instead of rare exotic conductors. Research it the moment it appears if your conductor line is your bottleneck. It does not remove the need for rare conductors entirely -- it gives you a supplementary source that smooths demand spikes and lets rare conductor output go to the recipes that truly need it.
{{< /callout >}}

## Unlock Location

The recipe lives in the **Matter / Advanced Materials branch** of the research tree, same tier as De-Energized Matter. Expect to see it after:

- Basic carbon processing
- The first conductor recipe (the one you are probably already using)
- A mid-tier Matter research node

If you are planning your research sequence, our [Research Order Guide](/guides/research-order/) has the recommended order; the Nano-Conductor node slots in comfortably right after your second exotic gas node.

## The Recipe

### Inputs (Common, not rare)

| Input | Source |
|-------|--------|
| Carbon (primary) | Your existing carbon line -- see [Chemical Processing Guide](/guides/chemical-processing-refining-chain/) |
| Refined gas or alloy (secondary) | Check the in-game recipe card; typically a product you already make in bulk |
| Power | Standard converter draw |

### Output

- **Carbon Nano-Conductors**, usable wherever the base conductor item is an input
- Rate: approximately matches one assembler's conductor demand, so one converter feeds roughly one assembler

{{< callout type="warning" title="Read The Recipe Card First" >}}
The exact secondary input differs depending on which alternate branch you have unlocked. Verify the card in-game before re-plumbing. A common mistake is assuming the secondary is Nitrox (from the v1.1 changes) when your save's recipe card asks for something else.
{{< /callout >}}

## Factory Redesign: Before vs After

### Before (v1.1.0 style)

```
Rare conductor source (limited)
  → circuits
  → modules / advanced items
  → everything stalls when rare source runs dry
```

### After (v1.1.1.0 with Nano-Conductors)

```
Carbon line ──► Nano-Conductor converter ──► circuits (bulk, always-on)
Rare conductor source ──► high-tier recipes only (modules, MK3 gear)
```

The key move: **dedicate your rare conductors to the recipes that have no alternative**, and feed the bulk circuit demand from Carbon Nano-Conductors. This is the same "tier your resources" philosophy as the [Resource Processing Tree](/guides/resource-processing-tree/), applied at the conductor tier.

## Ratio Check

A practical starting ratio:

- **1 Nano-Conductor converter per assembler** making circuits
- Keep rare conductor output flowing to **modules and MK2/MK3 components** only
- Buffer the Nano-Conductor output in a [Storage Network](/guides/storage-network-design/) so circuit assemblers never idle

Monitor for 30 minutes of runtime. If the circuit line backs up, your carbon feed is the constraint -- add carbon, not more converters.

{{< callout type="verdict" title="Bottom Line" >}}
Carbon Nano-Conductors is the anti-bottleneck recipe. It converts your most abundant material (carbon) into your most annoying shortage (conductors). It will not replace rare conductors in high-tier recipes, but it will unstick your circuit production and let your rare conductor stockpile stretch much further. If you are mid-game and circuits are your wall, this is the v1.1.1.0 feature for you.
{{< /callout >}}
