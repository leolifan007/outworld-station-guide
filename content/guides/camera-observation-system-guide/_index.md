---
title: "Outworld Station Camera and Observation System - Monitor Every Part of Your Factory Remotely"
description: "Outworld Station camera system, remote observation rooms, alarm triggers, and the centralized monitoring console that lets you check any production line without leaving your command center."
date: 2026-07-13
publishedAt: 2026-07-13T10:00:00+08:00
version: "1.1"
game_version: "v1.1.0"
breadcrumb: Camera System
lastmod: 2026-07-14
draft: false
category: misc
tested: "Full monitoring setup with 12 cameras across 6 production zones at Station Level 7."
---

## Your Station Is 40 Modules and You Cannot See Half of It

Your station has grown. It sprawls across two asteroid surfaces, a connecting corridor, and a satellite platform. A drill stops working on the far side. You do not realize it for 10 minutes because you were busy building on the other end. Your smelter line starved for 10 minutes because one connector broke.

Outworld Station has a camera system that the tutorial completely ignores. You can place cameras anywhere, view them from a central Observation Room, and set up alarms that trigger when production lines stop.

<div class="callout callout-verdict">
  <h4>The Short Version</h4>
  <p>Build an Observation Room (Station Level 4). Place Camera Drones at key production junctions. Connect them to the Observation Room's console. Set throughput alarms on critical lines. One glance at the console tells you if any line has stopped, starved, or backed up.</p>
</div>

<hr>

<details class="md-fold">
<summary><span>Camera Drone Types</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### What You Can Place

| Camera Type | Range | Power | Cost | Best For |
|------------|:----:|:----:|------|----------|
| Fixed Camera | 1 tile (fixed angle) | 5 kW | 5 Iron | Watching a single building |
| Pan Camera | 3 tiles (180 degree) | 10 kW | 10 Iron + 5 Copper | Monitoring a production line |
| PTZ Camera | 5 tiles (360 degree, zoom) | 20 kW | 20 Electronics | Large area monitoring |
| Camera Drone | Mobile, 50 tile range | 30 kW | 40 Electronics + Battery | Mobile patrol / inspection |

**Recommended coverage:**
- 1 Fixed Camera per critical building (Smelter, Reactor, Oxygen Gen)
- 1 Pan Camera per production zone (mining, smelting, assembly)
- 1 PTZ Camera for the main storage area
- 1 Camera Drone for patrolling long corridors

</div></details>

<hr>

<details class="md-fold">
<summary><span>The Observation Room Console</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### Centralized Monitoring

The Observation Room (cost: 50 Iron + 20 Electronics, Station Level 4) has a console that shows all connected cameras in a grid layout.

**Console Features:**
**Tile View:** See 4 cameras simultaneously
**Full Screen:** Select any camera for detailed view
**Alarm Log:** Shows all triggered alarms with timestamp and camera
**Record:** Saves 5 minutes of footage (useful for diagnosing intermittent issues)

**Alarm Triggers You Can Set:**

| Alarm Type | Trigger Condition | Priority | Use Case |
|-----------|-----------------|:-------:|----------|
| Output stopped | Building output = 0 for 30s | Critical | Drill / Smelter jam |
| Input starved | Building input = 0 for 30s | High | Assembler waiting for material |
| Buffer full | Storage > 90% for 60s | Medium | Overflow about to stall line |
| Power drop | Power draw drops by 50% | Critical | Generator failure |
| Movement | Motion detected in camera view | Variable | Enemy intrusion (late game) |

</div></details>

<hr>

<details class="md-fold">
<summary><span>Setting Up Your First Monitoring Network</span><span class="fold-toggle">[+]</span></summary>

<div class="fold-body">

### Step-by-Step

1. Research "Observation Systems" (Station Level 4, costs 50 Tech Points)
2. Build an Observation Room near your station core
3. Craft 3-4 Pan Cameras
4. Place one camera per production zone (mining, smelting, assembly, power)
5. Connect each camera to the Observation Room via connector (max 30 tile range)
6. Set output-stopped alarms on: Drill(s), Smelter(s), Reactor(s)
7. Set buffer-full alarm on: Main storage
8. Check the console once per play session

<div class="callout callout-tip">
  <h4>Optimal Camera Placement</h4>
  <p>Place cameras at 45-degree angles above your production lines, not straight on. The elevated angle lets you see both the building input and output connectors in one frame.</p>
</div>

</div></details>

<hr>

## Camera Drone Patrol Route

For advanced setups, assign a Camera Drone to a patrol route:
1. Launch the Camera Drone from its dock
2. Set waypoints: Reactor Room -> Smelter Line -> Assembler Zone -> Storage
3. Set dwell time: 10 seconds per waypoint
4. The drone continuously loops the route, and you can check its feed anytime

<hr>

### Related Guides
- [Drone Bay Setup and Fleet Management](/guides/drone-bay-fleet-management/)
- [Automated Repair and Station Self-Healing](/guides/automated-repair-station-healing/)
### v1.1: Camera and Observation Systems Unchanged

**Verified for v1.1** — the camera and observation system mechanics are unchanged. Camera placement, alarm triggers, and Observation Room setup work the same as described in this guide. Strategy and monitoring layout recommendations still apply.
