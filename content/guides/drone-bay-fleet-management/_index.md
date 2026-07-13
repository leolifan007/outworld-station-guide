---
title: "Outworld Station Drone Bay Setup and Fleet Management - Automate Everything with Drones"
description: "Outworld Station drone bay building, drone types, fleet routing, battery management, and drone bay upgrade priority. Turn your drones into a fully automated workforce."
date: 2026-07-13
publishedAt: 2026-07-13T10:00:00+08:00
breadcrumb: Drone Management
lastmod: 2026-07-14
draft: false
version: "1.1"
game_version: "v1.1.0"
category: logistics
tested: "Drone fleet with 24 active drones across 3 bays, Station Level 12."
---

    ## Your Drones Keep Dying Mid-Route

    You unlocked the Drone Bay. You built it. You crafted 6 drones. They flew out, delivered some materials, and then... stopped. The Drone Bay says "Charging." The drones sit on the pad for 30 seconds. Then they fly 5 tiles and stop again. Your factory is running on 10% drone uptime.

    The problem: Drone Bay placement, battery capacity, and route planning. Drones are not magical delivery fairies. They have limited battery, limited cargo, and they charge slowly if the Bay is underpowered.

    <div class="callout callout-verdict">
      <h4>The Short Version</h4>
      <p>Place your Drone Bay within 10 tiles of your main power bus. Build 2 Drone Bays if you want more than 8 active drones. Assign drones to specific route pairs (not general "deliver anywhere"). Upgrade Drone Battery first, then Cargo Capacity, then Speed. A well-configured drone fleet runs 95% uptime.</p>
    </div>

    <hr>

    <details class="md-fold">
    <summary><span>Drone Bay Types and Stats</span><span class="fold-toggle">[+]</span></summary>

    <div class="fold-body">

    ### Drone Bay Comparison

    | Bay Type | Drone Slots | Max Drones | Power Draw | Build Cost |
    |---------|:----------:|:---------:|:---------:|-----------|
    | Basic Drone Bay | 4 | 8 | 50 kW | 20 Electronics + 10 Iron |
    | Advanced Drone Bay | 6 | 16 | 100 kW | 40 Electronics + 20 Superalloy |
    | Fleet Command Bay | 8 | 32 | 200 kW | 80 Electronics + 50 Superalloy + 10 Quantum |

    **Drone Types:**

    | Drone Type | Speed | Cargo | Battery | Best For |
    |-----------|:----:|:----:|:------:|----------|
    | Cargo Drone (basic) | 1x | 5 units | 100 | Short-range item moves |
    | Fast Cargo Drone | 1.5x | 5 units | 80 | Urgent deliveries |
    | Heavy Cargo Drone | 0.7x | 20 units | 150 | Bulk transport |
    | Repair Drone | 1.2x | 0 (carries repair kits) | 120 | Automatic station repair |

    <div class="callout callout-tip">
      <h4>Starting Fleet Recommendation</h4>
      <p>Build 1 Basic Drone Bay with 4 Cargo Drones and 2 Repair Drones. The repair drones save you hours of manual fixes. Upgrade to Advanced Bay once you have more than 4 supply routes.</p>
    </div>

    </div></details>

    <hr>

    <details class="md-fold">
    <summary><span>Route Configuration - Pairs, Not Free-Range</span><span class="fold-toggle">[+]</span></summary>

    <div class="fold-body">

    ### The Biggest Mistake

    Most players set drones to "Any -> Any" delivery mode. This sounds efficient. It is not. Drones waste battery flying across the station for small deliveries when they should be running dedicated routes.

    **Assign drones to specific source -> destination pairs:**

    ```
    Drone 1: Smelter Output -> Assembler Input (loop, continuous)
    Drone 2: Storage -> Assembler Input (on-demand)
    Drone 3: Assembler Output -> Storage (continuous)
    Drone 4: Storage -> Construction Site (on-demand, manual trigger)
    ```

    **Route Priority Levels:**

    | Priority | Behavior | Use Case |
    |:-------:|----------|----------|
    | Critical | Interrupts other routes, always delivers first | Reactor fuel supply |
    | High | Delivers before standard routes | Assembler material feed |
    | Standard | Normal delivery, queues behind higher priority | Storage refill |
    | Low | Delivers when idle | Overflow routing |

    </div></details>

    <hr>

    <details class="md-fold">
    <summary><span>Battery Management - Keep Drones Flying</span><span class="fold-toggle">[+]</span></summary>

    <div class="fold-body">

    ### Drone Battery Math

    | Activity | Battery Drain |
    |----------|:------------:|
| Takeoff | 5 |
    | 1 tile flight | 2 |
    | Loading cargo (per unit) | 1 |
    | Unloading cargo (per unit) | 1 |
    | Hovering (per second) | 3 |
    | Landing | 3 |
    | Idle on pad | 0 (slow charge) |

    **Max Route Distance by Drone Type:**

    | Drone Type | Max Round Trip (no charge stop) | With Mid-Route Charging Pad |
    |-----------|:-------------------------------:|:--------------------------:|
    | Cargo | 20 tiles | 50 tiles |
    | Fast Cargo | 15 tiles | 40 tiles |
    | Heavy Cargo | 35 tiles | 80 tiles |

    **Charge Rates:**

    | Charging Location | Rate | Full Charge Time |
    |------------------|:---:|:--------------:|
    | Drone Bay pad | 5/sec | 20 seconds |
    | Charging Pad (standalone) | 3/sec | 33 seconds |
    | Emergency battery swap | Instant | Cost: 1 battery/module |

    <div class="callout callout-warning">
      <h4>The Range Trap</h4>
      <p>If a drone runs out of battery mid-route, it drops its cargo and powers down. You must physically pick up the cargo and recharge the drone manually. Always leave 20% battery margin on long routes.</p>
    </div>

    </div></details>

    <hr>

    ## Upgrade Priority

    1. **Drone Battery Capacity** (First) - Every upgrade adds 25% more flight time
    2. **Drone Cargo Capacity** (Second) - More items per trip = fewer trips = less battery waste
    3. **Bay Charging Speed** (Third) - Gets drones back in the air faster
    4. **Drone Speed** (Last) - Speed matters less than battery and cargo for most setups

    <hr>

    ## v1.1: Coordinating Ship CPU Control With Your Drone Fleet

    The v1.1 Ship CPU Control system adds a new autonomous layer alongside your drones. Every completed ship has a CPU budget (CPU points) you allocate to roles in the Ship menu. Once allocated, a ship performs map tasks on its own -- auto-haul, escort, patrol -- without a pilot.

    {{< callout "info" >}}**v1.1:** A CPU-controlled ship complements your paired vs free-range drones. Drones are best for short-range, high-frequency paired delivery; a CPU ship is better for long-haul or guard duties. Assign CPU roles so ships and drones cover different routes.{{< /callout >}}

    **Suggested division of labor:**
    - **CPU ship (auto-haul):** runs long-haul bulk transport between distant outposts or resource rocks. Give it the auto-haul role and let it ferry large loads while drones stay on the station core.
    - **Drones (paired delivery):** handle short-range, continuous routes between production buildings (Smelter -> Assembler, etc.).
    - **CPU ship (escort/patrol):** protects a towing or salvage run, freeing your drones from defensive detours.

    Keep one rule: never have a CPU ship and a drone run the same route. That just doubles battery and power draw for the same cargo. Split the map -- ships take the long, sparse lanes; drones take the dense, short lanes. Full role allocation is in the [Ship CPU Control Guide](/guides/ship-cpu-control-guide/).

    <hr>

    ### Related Guides
    - [Cargo Drone Network Setup Guide](/guides/cargo-drone-network/)
    - [Cargo Drone Network Optimization](/guides/cargo-drone-network-optimization/)
    - [Automated Repair and Station Self-Healing](/guides/automated-repair-station-healing/)
