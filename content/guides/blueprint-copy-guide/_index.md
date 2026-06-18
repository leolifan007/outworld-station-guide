---
title: "Outworld Station Blueprint Copy-Paste - How to Duplicate Factory Layouts with Ctrl+C"
description: "Outworld Station blueprint system for copying and pasting entire factory rooms, connector layouts, and inventory pairing across your station. Save hours of rebuild time."
date: 2026-06-18
publishedAt: 2026-06-20T15:30:00+08:00
publishDate: 2026-06-19T00:30:00+08:00
hidden: true
breadcrumb: Blueprints
lastmod: 2026-06-18
draft: false
category: building
tested: "Blueprint copy tested across 30+ builds including multi-room factories."
---

## You Are Building the Same Room 10 Times. Stop.

Every new smelter room follows the same pattern. Two Smelters, one Buffer, Connector links to storage. You build it from scratch every time. The connectors must be positioned exactly. The inventory pairs must be set up again. The pipe routing must be redone.

Outworld Station has a blueprint system most players miss: you can copy an entire room (including its connector links, inventory pairs, and building settings) and paste it anywhere. Ctrl+C and Ctrl+V work on rooms, not just text.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Select a building, press Ctrl+C. Open the build menu, select the same building type, press Ctrl+V at the new location. The building appears with all settings, links, and inventory pairs intact. Works for any standalone building. For multi-building layouts, select the room center and copy the entire room.</p>
</div>

<hr>

<details class="md-fold">
<summary><span>What the Blueprint System Can and Cannot Copy</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### What Gets Copied

| Feature | Copied? | Notes |
|---------|:-------:|-------|
| Building type and level | Yes | Exact tier upgrade |
| Connector links (output) | Yes | Direction preserved |
| Inventory pairs (output) | Yes | Links to nearest matching input |
| Building settings (recipe) | Yes | What the building produces |
| Priority settings | Yes | Resource priority preserved |
| Room layout | Yes | Wall positions, floor tiles |

### What Does NOT Get Copied

| Feature | Copied? | Why |
|---------|:-------:|-----|
| Connector links (input) | No | Input source must be set at destination |
| Inventory pairs (input) | No | Must rebind to local supply |
| Building contents | No | Resources stay in original building |
| Interior decorations | No | Decorative items are not blueprinted |

### The Golden Rule

**Output settings copy. Input bindings do not.** This means you can paste a smelter and keep its output routing (buffer -> storage), but you must reconnect its input (drill -> smelter) manually.

{{< diagram src="blueprint-copy-flow.svg" caption="Blueprint copy flow: Ctrl+C captures building with output links, Ctrl+V places copy with same outputs but requires manual input reconnection" >}}

</div></details>

<hr>

<details class="md-fold">
<summary><span>Room-Scale Copying (Multi-Building Blueprints)</span><span class="fold-toggle">▼</span></summary>

<div class="fold-body">

### How to Copy an Entire Room

1. Select the center tile of your room (the floor, not a building)
2. Press Ctrl+C - the room selection UI appears
3. Drag to select all buildings in the room
4. Confirm selection
5. Navigate to the new location
6. Press Ctrl+V - the entire room with all buildings and their output links is pasted
7. Reconnect input links for each pasted building

### Room Blueprint Limitations

- Maximum room size: roughly 15x15 tiles
- Pasted rooms need empty space (buildings cannot overlap)
- Elevation differences matter - pasting on a different floor level breaks some connector links

<div class="callout callout-tip">
  <h4>Template Room Strategy</h4>
  <p>Build one "template room" with your ideal layout: Smelter -> Buffer -> Assembler. Copy it 4-5 times. Each copy gets the same output configuration, saving 15 minutes per room. For a 6-room factory, you save 90 minutes of setup time.</p>
</div>

### Best Use Cases for Room Copying

| Use Case | Time Saved | Complexity |
|----------|:----------:|:----------:|
| Smelter room duplication | 10-15 min per room | Low |
| Gas processing arrays | 8-12 min per array | Medium |
| Assembler clusters | 5-8 min per cluster | Low |
| Storage room layout | 10-15 min per room | Medium |
| Defense turret clusters | 5-10 min per cluster | Low |

</div></details>

<hr>

## Advanced Blueprint Techniques

### Technique 1: Modular Expansion

Build one perfect module (e.g. a 2-smelter + buffer + 3-assembler block). Blueprint it. Paste it wherever you need more production. This is how you scale from Station Level 6 to 15 without rebuilding your factory.

### Technique 2: Export and Import

The game stores blueprints in the save file. You can copy the file to share blueprints between playthroughs or with other players. Look for the ".blueprint" files in your save directory:

```
%APPDATA%/OutworldStation/Saves/[worldname]/blueprints/
```

### Technique 3: Blueprint Library

Build a dedicated "blueprint room" in your station. Place one copy of each room type you use frequently (smelter room, assembler cluster, gas line). When you need a new one, copy from the blueprint room, not from a live production room. This prevents accidentally copying buildings that are currently running at different settings.

<div class="callout callout-verdict">
  <h4>Saving vs Blueprinting</h4>
  <p>The game autosaves. Blueprints are not saves. A blueprint is a template you paste. A save is a snapshot of your entire station. Use blueprints for rapid building. Use saves for disaster recovery. They serve different purposes.</p>
</div>

<hr>

## Common Blueprint Problems

| Problem | Cause | Fix |
|---------|-------|-----|
| Paste makes a different building | Wrong building selected when copying | Delete and re-copy from correct template |
| Connectors point to wrong buildings | Input links not reset after paste | Manually re-connect each input |
| Room paste overlaps existing building | Not enough empty space | Move to a clear area or rotate the room |
| Blueprint appears as empty room | Room selection did not include buildings | Re-select with buildings included |
| Copied building has wrong recipe | Building was running a temporary recipe | Reset recipe before copying |

<hr>

### Related Guides
- [Station Expansion Blueprint - Mega-Station Planning](/guides/station-expansion-blueprint/)
- [Advanced Inventory Pairing](/guides/advanced-inventory-pairing/)
- [Station Layout Guide](/guides/station-layout-guide/)
