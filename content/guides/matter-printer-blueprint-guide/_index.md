---
title: "Matter Printer & Blueprint System -- Copy, Paste, Scale Your Factory"
description: "Outworld Station matter printer usage, blueprint template creation and replication, multi-hotbar management, and the copy-paste workflow that turns a 2-hour build into a 10-minute job."
date: 2026-06-09
lastmod: 2026-06-09T22:30:00+08:00
draft: false
hidden: true
publishDate: 2026-06-15T07:05:00+08:00
category: production
version: 1.0.0.0
breadcrumb: Blueprints
emoji: Print
---

## You Are Building Every Assembler Line By Hand. Stop.

You designed the perfect Smelter layout. Eight Smelters, three Connectors, one buffer chest, exactly aligned. Took you 20 minutes. Then you need three more copies. So you build them again. And again. By the time you finish the fourth copy, you have spent over an hour placing the same damn buildings in the same damn pattern.

Outworld Station has a blueprint system. It is not well-documented in-game. But once you learn it, you can replicate a full production line in under 60 seconds -- settings, logistics routes, and all.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Press Ctrl+C on a building to copy it. Press Ctrl+C again on multiple selected buildings to create a multi-building template. Hotbar slots save single-building blueprints permanently. The Matter Printer prints physical components from templates. This guide covers the full system added in version 0.1.2.6.</p>
</div>

## Quick-Fix: Your First Blueprint in 30 Seconds

| Step | Action | Result |
|------|--------|--------|
| 1 | Select a building | Press E to enter build mode |
| 2 | Point at any built structure | Crosshair highlights it in green |
| 3 | Press Ctrl+C | Building + its settings are copied to clipboard |
| 4 | Point at empty space | Green ghost appears |
| 5 | Click to place | Instant clone with same settings |

That is the basic single-building copy. The real power comes from **multi-building templates**.

{{< diagram "matter-printer-flow.svg" >}}

## The Blueprint System (v0.1.2.6+)

Version 0.1.2.6 introduced the Blueprint tool and Multiple Hotbars. Here is how they work:

### Creating a Multi-Building Template

1. Hold **Shift** and left-click to select multiple buildings
2. A blue selection box highlights your group
3. Press **Ctrl+C** -- a template saves to your clipboard
4. Press **Ctrl+V** -- the entire group ghost appears
5. Click to place all buildings at once

**Pro tip:** The template remembers building connections, conveyor directions, and logistics settings. If you had a Smelter set to output to a specific chest, the clone does the same.

### Hotbar Blueprints

Saving templates to your hotbar lets you reuse them across sessions:

| Hotbar | Slots | Use Case |
|--------|:-----:|----------|
| Hotbar 1 | 1-0 (10) | Default -- single buildings |
| Hotbar 2 | 1-0 (10) | Templates -- create using Ctrl+1..10 |
| Hotbar 3 | 1-0 (10) | Templates -- full production lines |
| Hotbar 4 | 1-0 (10) | Utility -- logistics hubs, defenses |

Switch between hotbars with the **Tab** key or the hotbar selector UI.

### Saving a Template to Hotbar

1. Select your multi-building group
2. Press **Ctrl+C** to copy
3. Press **Ctrl+[number]** to save to the current hotbar slot
4. Template is now permanent -- survives save/load

<div class="callout callout-tip">
  <h4>Template Naming Trick</h4>
  <p>You cannot rename templates in-game, but you can organize them by hotbar. I use Hotbar 2 for production templates (Smelter Block, Assembler Block, Refinery Block) and Hotbar 3 for logistics templates (Drone Hub + Storage, Cargo Dock Setup). Remember what is where -- there is no preview until you select the slot.</p>
</div>

## The Matter Printer: Printing Physical Components

The Matter Printer is the building that turns blueprints into physical objects. It is unlocked around Station Level 4-5 under the Production research tree.

### What the Matter Printer Does

| Feature | How It Works |
|---------|-------------|
| Input | Iron Plates + Circuit Boards (basic), or Alloy Plates + Electronics (advanced) |
| Output | Hull parts, Frames, Connector pieces |
| Templates | Pre-set recipes + custom blueprints for structural components |
| Speed | 1 part per 5 seconds (basic), 1 per 3 seconds (upgraded) |

### Use Cases

- **Mass-producing Connector pieces** for station expansion
- **Printing Hull Frames** for new rooms
- **Replicating structural supports** for large open spaces
- **Automating building material production** so you can focus on layout

<div class="callout callout-warning">
  <h4>The Matter Printer Is Not the Blueprint Tool</h4>
  <p>Common confusion: the Matter Printer prints <strong>component items</strong> (hull parts, frames), not building layouts. The Blueprint Tool (Ctrl+C/Ctrl+V) copies building <strong>placements and settings</strong>. You use both together: the Matter Printer makes the physical parts, the Blueprint Tool places the buildings that use those parts.</p>
</div>

## Real Scenario: Rebuilding After a Raid

A hostile drone swarm took out my entire mining wing -- eight Smelters, four Connectors, two Storage Chests, and the power line feeding them. Manual rebuild would have taken 40 minutes.

**The fix:** Before the raid, I had saved a "Mining Block" template to Hotbar Slot 2. It was a group of 4 Smelters, 2 Connectors, and 1 Chest with conveyor routes already set. After the raid:

1. Opened the Matter Printer queue -- printed 16 Connector pieces and 8 Smelter frames (3 minutes)
2. Clicked Hotbar 2, selected my Mining Block template (5 seconds)
3. Placed two copies side by side (10 seconds)
4. Connected power (20 seconds)

Total rebuild: under 5 minutes. I keep templates for every production module now.

## Building a Template Library

Here is what I recommend saving:

| Template | Contains | Hotbar Slot | Use When |
|----------|---------|:-----------:|----------|
| Smelter Block | 4 Smelters + 1 Buffer Chest | HB2-1 | Every mining expansion |
| Assembler Module | 3 Assemblers + 1 Buffer Chest | HB2-2 | Production line scaling |
| Refinery Unit | 2 Refineries + 2 Connectors | HB2-3 | Chemical processing setups |
| Gas Extraction Pod | 1 Extractor + 1 Tank + 1 Connector | HB2-4 | New planet outposts |
| Defense Post | 1 Gun + 1 Shield + 1 Power Relay | HB2-5 | Perimeter security |

See our [Station Layout Guide](/guides/station-layout-guide/) for optimal template placement, and the [Station Expansion Blueprint](/guides/station-expansion-blueprint/) guide for complete mega-station build plans.

## Community Resources

- [Steam Guides](https://steamcommunity.com/app/3242950/guides/) _(opens in new tab)_
- [Outworld Station on Reddit](https://www.reddit.com/r/IndieGaming/comments/1ijv6yx/check_out_my_new_space_factory_game_outworld/) _(opens in new tab)_

