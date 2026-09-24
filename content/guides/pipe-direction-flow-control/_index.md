---
title: "Pipe Direction and Flow Control - Why You Cannot Force A Pipe Or Split It Evenly"
description: "Outworld Station pipes need a direction, cannot be reversed by force, and never split flow evenly like belts. Here is how direction is decided and how to simulate forced flow and even distribution."
date: 2026-09-24
publishedAt: 2026-09-24T17:56:00+08:00
lastmod: 2026-09-24T17:56:00+08:00
draft: false
version: "1.1.1.0"
game_version: "v1.1.1.0"
category: logistics
breadcrumb: Pipe Direction and Flow Control
tested: "Direction and distribution behavior tested on v1.1.1.0 with multi-source fluid networks and buffer tanks."
---

{{< diagram src="pipe-direction-flow.svg" caption="Pipes take a direction when placed and split by pressure, not evenly; three layout tricks recover forced flow and balanced distribution" >}}

## Pipes Are Not Belts, And That Is The Whole Problem

You came from belts, where one direction, a balancer, and roughly even distribution are normal. You assume pipes work the same, build one shared fluid manifold with four outlets, and expect a quarter of the flow at each.

Then the far outlet gets nothing, the near outlet gets everything, and reversing your source changes things again. Outworld Station pipes are a pressure system, not a belt. This guide is about direction and distribution control; for throughput limits see the [pipe and connector bottleneck guide](/guides/pipe-bottleneck-guide/), and for routing and valves see the [liquid and gas pipe network design guide](/guides/liquid-gas-pipe-network-design/).

{{< callout type="verdict" title="The Short Version" >}}
A pipe takes a direction when you place it, flow follows pressure from source to destination, and you cannot force a pipe to run backwards. Distribution is never balanced like a belt balancer - it is decided by pressure and path, so the shortest, lowest-resistance run wins almost everything. To control it you give each fluid dedicated source-to-sink runs, keep distinct sources so flows do not fight, use buffer tanks as flow gates, and split by building parallel dedicated lines instead of one shared manifold.
{{< /callout >}}

## How Pipe Direction Actually Works

Drag a pipe from a source to a destination and the game records a direction for that segment - the axis fluid is expected to move along. A pipe with no clear source or destination is ambiguous and behaves unpredictably until a pressure differential sorts it out.

What determines which way fluid moves:

| Factor | Effect on flow direction |
|--------|--------------------------|
| Source pressure | Fluid pushes away from the higher-pressure end |
| Destination demand | Fluid is drawn toward the machine that can accept it |
| Path length | Shorter runs carry more flow than long ones |
| Pipe tier | Higher tiers move more fluid, so they win more of a shared flow |
| Buffer tanks | Act as a pressure anchor and can gate a direction by filling first |
| Segment direction | Gives the network a preferred axis; reversing blindly fights it |

The takeaway: direction is not a switch you set to "forward." It emerges from where supply and demand are, and you influence it by how you lay out sources, sinks, and buffers.
## Why You Cannot Force A Pipe Backwards

There is no reverse-flow control: you cannot pick a pipe and tell it "run this way regardless." Rotating a pipe changes its axis, not the handedness of flow, and it will not push fluid against its own pressure gradient.

This matters when you reuse a pipe built for one direction for the opposite job - you expect to flip it like a belt and you cannot. Rebuild the run with source and sink swapped, or feed it from a different source. If a pipe "will not flow," suspect a leftover pressure anchor first.

## Why Distribution Is Not Balanced Like Belts

A belt balancer divides discrete items because the splitter hands them out one at a time. A pipe moves a continuous fluid under pressure, so there is no comparable splitter - the fluid takes the path of least resistance, usually the shortest and highest-tier run.

Split one source into four outlets of different lengths and you get a lopsided result: the nearest drinks, the farthest starves. There is no "pipe balancer" building. Treating a pipe manifold like a belt bus is the most common mid-game mistake in fluid layouts.

{{< callout type="warning" title="The Belt Reflex" >}}
Build a fluid manifold the way you build a belt bus and you get starvation on the far branches every time. There is no equivalent of [conveyor balancing](/guides/conveyor-balancing-guide/) for pipes. Design for pressure, not equal splits.
{{< /callout >}}

## Trick 1: Dedicated Source-To-Sink Runs

The simplest way to control direction is to eliminate the shared path: give each consumer its own run from the source.

- One source, one sink, one pipe: direction is unambiguous because there is nowhere else for the fluid to go.
- Parallel dedicated runs behave predictably, and a failure on one does not steal from the others.
- It removes every "why is this starving" question, at the cost of extra pipe.

This is the fluid equivalent of running separate belts to separate machines: costlier in material, far more predictable.

## Trick 2: Separate Flows With Distinct Sources

Make direction a property of the source, not the pipe. Two sources feeding two sinks through adjacent pipes do not interfere the way one source feeding two branches does, because each has its own pressure anchor.

- Keep a source dedicated to each major consumer group where you can.
- Do not merge two supply sources into one pipe unless you want their pressures to fight.
- For gas networks the same discipline applies to [hydrogen production](/guides/hydrogen-fuel-guide/): one producer, one primary consumer, clean direction.

## Trick 3: Use Buffer Tanks As Flow Gates

A buffer tank is the closest thing you have to flow-direction control. Because it fills before it passes fluid on, a buffer mid-run acts as a gate: downstream only receives once the buffer has pressure, and a full buffer stops accepting more. Place one between a source and a long run to steady pressure and anchor direction, or use a buffer to isolate two sections so a spike on one side does not starve the other. This is the principle behind [buffer storage](/guides/buffer-storage-strategy/), applied to controlling how fluid moves rather than just storing it.

## Trick 4: Split With Parallel Dedicated Lines, Not A Shared Manifold

To "split" fluid evenly, do not split at all - build parallel lines instead.

| Approach | Behavior | When to use |
|----------|----------|-------------|
| Shared manifold with branches | Nearest, shortest branch takes most flow | Never, for critical feeds |
| Parallel dedicated lines from one source | Predictable per-line flow | Small, fixed consumer counts |
| Buffer-gated branch | Fluid released once pressure is met | Long runs and staged distribution |
| Distinct source per consumer group | No cross-talk between flows | Multiple producers available |

Parallel lines do not magically equalize, but each is a known quantity you can tune by pipe tier and length.

{{< callout type="verdict" title="Bottom Line" >}}
Pipes are pressure, not conveyor. Direction comes from source and sink pressure, you cannot force a pipe backwards, and there is no even splitter to match a belt balancer. Build dedicated source-to-sink runs, keep distinct sources so flows do not fight, use buffer tanks as flow gates, and split by running parallel dedicated lines instead of one shared manifold. Pin down raw capacity limits before you rework direction, since a fixed bottleneck will not care which way the pipe points.
{{< /callout >}}
