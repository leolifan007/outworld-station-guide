---
title: "Star Map | R-TAU Galaxy Systems & Logistics Routes"
description: "Outworld Station star map — from the asteroid belt to the endgame relic sector. Interactive canvas star map showing all 6 major nodes, wormhole links, and resource zones."
date: 2026-05-09
breadcrumb: Map Guide
lastmod: 2026-05-12
draft: false
aliases:
  - /zh/map/
  - /en/map/
---

## Where Your Station Sits in the Galaxy

Outworld Station doesn't give you a fixed map — **your starting base is the center of your universe**. The asteroid fields, nearby planets, and wormhole links are all territory you expand into.

Below is an interactive map of the R-TAU galaxy. **Click any node for detailed info.**

<div id="starmap-canvas-container">
  <canvas id="starmap-canvas"></canvas>
  <div id="starmap-info-panel" class="starmap-panel">
    <button id="starmap-panel-close" class="starmap-panel-close">✕</button>
    <div id="starmap-panel-content"></div>
  </div>
  <div id="starmap-legend" class="starmap-legend">
    <div class="legend-title">Legend</div>
    <div class="legend-item"><span class="legend-dot" style="background:#00d4aa;"></span> Safe Zone</div>
    <div class="legend-item"><span class="legend-dot" style="background:#3b7dd8;"></span> Mining Zone</div>
    <div class="legend-item"><span class="legend-dot" style="background:#ff9f43;"></span> Processing Zone</div>
    <div class="legend-item"><span class="legend-dot" style="background:#a855f7;"></span> Advanced Zone</div>
    <div class="legend-item"><span class="legend-dot" style="background:#ef4444;"></span> Danger Zone</div>
    <div class="legend-item" style="margin-top:8px;"><span style="display:inline-block;width:20px;height:2px;background:linear-gradient(90deg,transparent,rgba(0,212,170,0.6),transparent);margin-right:6px;border-radius:1px;"></span> Wormhole Link</div>
  </div>
</div>

<script>
(function() {
  'use strict';

  var canvas = document.getElementById('starmap-canvas');
  var container = document.getElementById('starmap-canvas-container');
  var panel = document.getElementById('starmap-info-panel');
  var panelContent = document.getElementById('starmap-panel-content');
  var panelClose = document.getElementById('starmap-panel-close');

  // ----- STAR MAP DATA -----
  var nodes = [
    {
      id: 'station',
      x: 0.5, y: 0.5,
      label: 'Station Core',
      sub: 'Your Starting Point',
      color: '#00d4aa',
      zone: 'safe',
      radius: 28,
      orbitRadius: 0,
      connections: ['asteroid'],
      detail: {
        title: '🛰 Station Core',
        phase: 'Early Game',
        body: '<p><strong>Location:</strong> Your starting coordinates in the R-TAU system.</p><p><strong>Role:</strong> All production starts here. Houses your first Smelters, Assemblers, and storage.</p><p><strong>Core Setup:</strong></p><ul><li>4-6 Solar Panels (enough to start)</li><li>1-2 Small Batteries</li><li>At least 1 Medium Container (upgrade to Storage II ASAP)</li><li>2-3 Turrets (wormhole invasion hits at ~minute 30)</li></ul><p><strong>Pro tip:</strong> Drag your station as close to the nearest asteroid field as possible — every meter of distance saves transit time in the first hour.</p><a href="./beginner/" class="starmap-link">Read Beginner Guide →</a>'
      }
    },
    {
      id: 'asteroid',
      x: 0.2, y: 0.35,
      label: 'Asteroid Belt',
      sub: 'Iron / Copper / Basic Ores',
      color: '#3b7dd8',
      zone: 'mining',
      radius: 22,
      orbitRadius: 0.12,
      connections: ['station', 'refinery'],
      detail: {
        title: '🌇 Asteroid Belt',
        phase: 'Early Game',
        body: '<p><strong>Location:</strong> Closest resource zone to your Station Core.</p><p><strong>Output:</strong> Iron Ore, Copper Ore, trace coal.</p><p><strong>Phase:</strong><span class="phase-tag phase-early">Early</span></p><p><strong>Workflow:</strong></p><ul><li>Place Mining Drills on asteroid surfaces</li><li>Power them with nearby Solar Panels</li><li>Inventory → Pair output to Station Core storage containers</li></ul><p><strong>Note:</strong> Deposits aren\'t infinite. A single asteroid depletes after extended mining. Place at least 2-3 drills across different rocks to stabilize production.</p><a href="./resources/" class="starmap-link">View Resources Guide →</a>'
      }
    },
    {
      id: 'refinery',
      x: 0.35, y: 0.15,
      label: 'Processing Satellite',
      sub: 'Smelting / Assembly',
      color: '#ff9f43',
      zone: 'processing',
      radius: 20,
      orbitRadius: 0.2,
      connections: ['asteroid', 'rare'],
      detail: {
        title: '🛸 Processing Satellite',
        phase: 'Early → Mid Game',
        body: '<p><strong>Location:</strong> Can deploy as a Station Core expansion module or independent station.</p><p><strong>Role:</strong> Converts raw ore into usable materials and parts.</p><p><strong>Phase:</strong><span class="phase-tag phase-early">Early</span> → <span class="phase-tag phase-mid">Mid</span></p><p><strong>Core Buildings:</strong></p><ul><li>Smelter: Iron Ore → Iron Ingot</li><li>Assembler: Iron Ingot → Iron Plates / Parts</li><li>Circuit Fabricator: Copper + Carbon → Circuit Boards</li></ul><p><strong>Layout:</strong> Keep it close to both the ore source and your main storage hub. Pair inputs to ore containers, outputs to finished goods containers.</p><a href="./automation-guide/" class="starmap-link">Read Automation Guide →</a>'
      }
    },
    {
      id: 'rare',
      x: 0.8, y: 0.3,
      label: 'Rare Mineral Planet',
      sub: 'Titanium / Silicon / Alloys',
      color: '#a855f7',
      zone: 'advanced',
      radius: 22,
      orbitRadius: 0.35,
      connections: ['refinery', 'shipyard'],
      detail: {
        title: '💎 Rare Mineral Planet',
        phase: 'Mid → Late Game',
        body: '<p><strong>Location:</strong> Reachable via wormhole, 2-3 hops from the Station Core.</p><p><strong>Output:</strong> Titanium, Silicon, Rare Alloys, Alien Relic fragments.</p><p><strong>Phase:</strong><span class="phase-tag phase-mid">Mid</span> → <span class="phase-tag phase-late">Late</span></p><p><strong>Requirements:</strong></p><ul><li>Logistics II researched for stable supply lines</li><li>Wormhole Generators at both ends</li><li>Double-capacity storage on remote side (wormhole latency buffers)</li><li>Scout ship recon — these planets have tougher enemies</li><li>Alien Relic fragments unlock special Station Core upgrades</li></ul><a href="./resources/" class="starmap-link">View Full Resource Guide →</a>'
      }
    },
    {
      id: 'shipyard',
      x: 0.7, y: 0.65,
      label: 'Space Dock',
      sub: 'Ship Construction',
      color: '#a855f7',
      zone: 'advanced',
      radius: 20,
      orbitRadius: 0.38,
      connections: ['rare', 'endgame'],
      detail: {
        title: '🚌 Space Dock',
        phase: 'Mid → Late Game',
        body: '<p><strong>Unlock:</strong> Requires Shipyard I tech researched.</p><p><strong>Role:</strong> Build scout ships, cargo haulers, combat vessels.</p><p><strong>Phase:</strong><span class="phase-tag phase-mid">Mid</span> → <span class="phase-tag phase-late">Late</span></p><p><strong>Ship Build Order:</strong></p><ol><li><strong>First: Scout Ship</strong> — explore surrounding systems, mark resource-rich sectors</li><li><strong>Second: Cargo Hauler</strong> — run supply routes, bring rare minerals home</li><li><strong>Third: Combat Vessel</strong> — for serious wormhole invasions</li></ol><p><strong>Hidden tip:</strong> Cargo haulers don\'t need weapons — just cargo bays. Cheap and effective. Upgrade to armed versions when your trade routes get attacked.</p><a href="./building-tutorial/" class="starmap-link">Read Building Guide →</a>'
      }
    },
    {
      id: 'endgame',
      x: 0.5, y: 0.85,
      label: 'Relic Sector',
      sub: 'Ark / Endgame Tech',
      color: '#ef4444',
      zone: 'danger',
      radius: 24,
      orbitRadius: 0.45,
      connections: ['shipyard'],
      detail: {
        title: '🔡 Relic Sector',
        phase: 'Endgame',
        body: '<p><strong>Location:</strong> Edge of the mapped system. Requires multiple wormhole hops.</p><p><strong>Output:</strong> Ark ship blueprints, endgame tech upgrades, alien power cores.</p><p><strong>Phase:</strong><span class="phase-tag phase-late">Endgame</span></p><p><strong>Is this the final objective?</strong></p><p>In the current EA version, the Relic Sector is the farthest mapped region. Expect future updates to expand content here.</p><p><strong>What you can do now:</strong></p><ul><li>Explore ruins for special upgrades</li><li>Collect Ark component materials</li><li>Co-op with up to 3 friends against powerful foes</li></ul><p><strong>Don\'t rush here.</strong> If you\'re still manually hauling ore, the wormhole network isn\'t ready for you yet.</p><a href="./building-tutorial/" class="starmap-link">Advanced Strategies →</a>'
      }
    }
  ];

  // ----- CANVAS SETUP -----
  function resizeCanvas() {
    var w = container.clientWidth;
    var h = Math.max(420, Math.min(640, w * 0.65));
    canvas.width = w;
    canvas.height = h;
    canvas.style.width = w + 'px';
    canvas.style.height = h + 'px';
    draw();
  }

  // ----- ANIMATION -----
  var flowOffset = 0;
  var stars = [];

  function initStars(count) {
    stars = [];
    for (var i = 0; i < count; i++) {
      stars.push({
        x: Math.random(),
        y: Math.random(),
        r: Math.random() * 1.5 + 0.3,
        a: Math.random() * 0.5 + 0.1,
        speed: Math.random() * 0.003 + 0.001,
        phase: Math.random() * Math.PI * 2
      });
    }
  }
  initStars(200);

  // ----- DRAW -----
  function draw() {
    var ctx = canvas.getContext('2d');
    var w = canvas.width;
    var h = canvas.height;
    var cx = w * 0.5, cy = h * 0.5;
    flowOffset = (flowOffset + 0.008) % (Math.PI * 2);

    // Clear
    ctx.clearRect(0, 0, w, h);

    // Background gradient
    var grad = ctx.createRadialGradient(cx * 0.8, cy * 0.6, 0, cx, cy, w * 0.7);
    grad.addColorStop(0, 'rgba(5,8,20,1)');
    grad.addColorStop(0.4, 'rgba(10,14,30,1)');
    grad.addColorStop(0.7, 'rgba(15,18,35,1)');
    grad.addColorStop(1, 'rgba(5,5,15,1)');
    ctx.fillStyle = grad;
    ctx.fillRect(0, 0, w, h);

    // Nebula glow
    var ng = ctx.createRadialGradient(w * 0.3, h * 0.25, 0, w * 0.3, h * 0.25, w * 0.35);
    ng.addColorStop(0, 'rgba(59,125,216,0.04)');
    ng.addColorStop(1, 'transparent');
    ctx.fillStyle = ng;
    ctx.fillRect(0, 0, w, h);

    var ng2 = ctx.createRadialGradient(w * 0.7, h * 0.7, 0, w * 0.7, h * 0.7, w * 0.25);
    ng2.addColorStop(0, 'rgba(168,85,247,0.03)');
    ng2.addColorStop(1, 'transparent');
    ctx.fillStyle = ng2;
    ctx.fillRect(0, 0, w, h);

    // Twinkling stars
    for (var i = 0; i < stars.length; i++) {
      var s = stars[i];
      var twinkle = Math.sin(Date.now() * s.speed + s.phase) * 0.3 + 0.7;
      ctx.beginPath();
      ctx.arc(s.x * w, s.y * h, s.r, 0, Math.PI * 2);
      ctx.fillStyle = 'rgba(255,255,255,' + (s.a * twinkle) + ')';
      ctx.fill();
    }

    // ---- Draw connections (wormholes) ----
    var drawnEdges = {};

    for (var n = 0; n < nodes.length; n++) {
      var node = nodes[n];
      var nx = node.x * w, ny = node.y * h;
      for (var c = 0; c < node.connections.length; c++) {
        var targetId = node.connections[c];
        var target = null;
        for (var m = 0; m < nodes.length; m++) {
          if (nodes[m].id === targetId) { target = nodes[m]; break; }
        }
        if (!target) continue;
        var edgeKey = [node.id, target.id].sort().join('-');
        if (drawnEdges[edgeKey]) continue;
        drawnEdges[edgeKey] = true;

        var tx = target.x * w, ty = target.y * h;

        // Wormhole glow
        ctx.beginPath();
        ctx.moveTo(nx, ny);
        ctx.lineTo(tx, ty);
        ctx.strokeStyle = 'rgba(0,212,170,0.08)';
        ctx.lineWidth = 12;
        ctx.stroke();

        // Wormhole dashed line
        ctx.setLineDash([8, 8]);
        var phase = (flowOffset * 30) % 16;
        ctx.lineDashOffset = -phase;
        ctx.beginPath();
        ctx.moveTo(nx, ny);
        ctx.lineTo(tx, ty);
        ctx.strokeStyle = 'rgba(0,212,170,0.4)';
        ctx.lineWidth = 2;
        ctx.stroke();
        ctx.setLineDash([]);

        // Flow particles along wormhole
        var numParticles = 3;
        for (var p = 0; p < numParticles; p++) {
          var t = ((flowOffset / (Math.PI * 2)) + p / numParticles) % 1;
          var px = nx + (tx - nx) * t;
          var py = ny + (ty - ny) * t;
          ctx.beginPath();
          ctx.arc(px, py, 2.5, 0, Math.PI * 2);
          ctx.fillStyle = 'rgba(0,255,200,' + (1 - t * 0.5) + ')';
          ctx.fill();
        }
      }
    }

    // ---- Draw orbit circles for nodes with orbitRadius ----
    for (var n = 0; n < nodes.length; n++) {
      if (nodes[n].orbitRadius > 0) {
        var or = nodes[n].orbitRadius * Math.min(w, h) * 0.48;
        ctx.beginPath();
        ctx.arc(cx, cy, or, 0, Math.PI * 2);
        ctx.strokeStyle = 'rgba(255,255,255,0.04)';
        ctx.lineWidth = 1;
        ctx.setLineDash([3, 6]);
        ctx.stroke();
        ctx.setLineDash([]);
      }
    }

    // ---- Draw nodes ----
    for (var n = 0; n < nodes.length; n++) {
      var node = nodes[n];
      var nx = node.x * w, ny = node.y * h;
      var r = node.radius;

      // Outer glow
      var glow = ctx.createRadialGradient(nx, ny, 0, nx, ny, r * 2.5);
      glow.addColorStop(0, node.color + '20');
      glow.addColorStop(0.5, node.color + '08');
      glow.addColorStop(1, 'transparent');
      ctx.fillStyle = glow;
      ctx.beginPath();
      ctx.arc(nx, ny, r * 2.5, 0, Math.PI * 2);
      ctx.fill();

      // Pulsing ring
      var pulseR = r + 6 + Math.sin(Date.now() * 0.002 + n) * 4;
      ctx.beginPath();
      ctx.arc(nx, ny, pulseR, 0, Math.PI * 2);
      ctx.strokeStyle = node.color + '40';
      ctx.lineWidth = 1.5;
      ctx.stroke();

      // Node circle
      var grad2 = ctx.createRadialGradient(nx - r * 0.3, ny - r * 0.3, 0, nx, ny, r);
      grad2.addColorStop(0, '#ffffff');
      grad2.addColorStop(0.3, node.color);
      grad2.addColorStop(1, node.color + 'cc');
      ctx.beginPath();
      ctx.arc(nx, ny, r, 0, Math.PI * 2);
      ctx.fillStyle = grad2;
      ctx.fill();

      // Node border
      ctx.beginPath();
      ctx.arc(nx, ny, r, 0, Math.PI * 2);
      ctx.strokeStyle = node.color + 'aa';
      ctx.lineWidth = 2;
      ctx.stroke();

      // Inner icon
      if (node.id === 'station') {
        ctx.fillStyle = 'white';
        ctx.font = (r * 0.9) + 'px sans-serif';
        ctx.textAlign = 'center';
        ctx.textBaseline = 'middle';
        ctx.fillText('✦', nx, ny);
      } else if (node.id === 'asteroid') {
        ctx.fillStyle = 'white';
        ctx.font = (r * 0.8) + 'px sans-serif';
        ctx.textAlign = 'center';
        ctx.textBaseline = 'middle';
        ctx.fillText('◆', nx, ny + 1);
      } else if (node.id === 'refinery') {
        ctx.fillStyle = 'white';
        ctx.font = (r * 0.8) + 'px sans-serif';
        ctx.textAlign = 'center';
        ctx.textBaseline = 'middle';
        ctx.fillText('●', nx, ny);
        ctx.strokeStyle = 'white';
        ctx.lineWidth = 1.5;
        ctx.beginPath();
        ctx.arc(nx, ny, r * 0.3, 0, Math.PI * 2);
        ctx.stroke();
      } else if (node.id === 'rare') {
        ctx.fillStyle = 'white';
        ctx.font = (r * 0.8) + 'px sans-serif';
        ctx.textAlign = 'center';
        ctx.textBaseline = 'middle';
        ctx.fillText('♦', nx, ny + 1);
      } else if (node.id === 'shipyard') {
        ctx.fillStyle = 'white';
        ctx.font = (r * 0.75) + 'px sans-serif';
        ctx.textAlign = 'center';
        ctx.textBaseline = 'middle';
        ctx.fillText('▲', nx + 1, ny + 1);
      } else if (node.id === 'endgame') {
        ctx.fillStyle = 'white';
        ctx.font = (r * 0.85) + 'px sans-serif';
        ctx.textAlign = 'center';
        ctx.textBaseline = 'middle';
        ctx.fillText('⚡', nx, ny + 1);
      }

      // Label
      ctx.fillStyle = 'rgba(255,255,255,0.9)';
      ctx.font = 'bold 12px sans-serif';
      ctx.textAlign = 'center';
      ctx.textBaseline = 'top';
      ctx.fillText(node.label, nx, ny + r + 10);

      ctx.fillStyle = 'rgba(255,255,255,0.5)';
      ctx.font = '10px sans-serif';
      ctx.fillText(node.sub, nx, ny + r + 26);
    }
  }

  // ----- HIT TESTING -----
  function getNodeAt(mx, my) {
    var w = canvas.width, h = canvas.height;
    for (var n = nodes.length - 1; n >= 0; n--) {
      var node = nodes[n];
      var nx = node.x * w, ny = node.y * h;
      var r = node.radius + 20;
      var dx = mx - nx, dy = my - ny;
      if (dx * dx + dy * dy <= r * r) return node;
    }
    return null;
  }

  // ----- PANEL -----
  function showPanel(node) {
    var detail = node.detail;
    var phaseTag = '<span class="starmap-phase phase-tag">' + (detail.phase || '') + '</span>';
    panelContent.innerHTML =
      '<div class="starmap-panel-header" style="border-left-color:' + node.color + ';">' +
        '<h3>' + detail.title + '</h3>' +
        phaseTag +
      '</div>' +
      '<div class="starmap-panel-body">' + detail.body + '</div>';
    panel.classList.add('active');
  }

  function hidePanel() {
    panel.classList.remove('active');
  }

  // ----- EVENTS -----
  canvas.addEventListener('click', function(e) {
    var rect = canvas.getBoundingClientRect();
    var scaleX = canvas.width / rect.width;
    var scaleY = canvas.height / rect.height;
    var mx = (e.clientX - rect.left) * scaleX;
    var my = (e.clientY - rect.top) * scaleY;
    var hit = getNodeAt(mx, my);
    if (hit) {
      showPanel(hit);
    }
  });

  panelClose.addEventListener('click', hidePanel);

  // ----- ANIMATION LOOP -----
  var animId = null;
  function animate() {
    draw();
    animId = requestAnimationFrame(animate);
  }

  // ----- RESIZE -----
  var resizeTimer = null;
  window.addEventListener('resize', function() {
    clearTimeout(resizeTimer);
    resizeTimer = setTimeout(function() {
      resizeCanvas();
    }, 200);
  });

  // ----- INIT -----
  resizeCanvas();
  animate();

})();
</script>

---

## How to Read the Map

Three principles define this galaxy layout:

### ❶ Distance = Complexity

The closer to the Station Core, the simpler and more basic the resources. Farther wormhole links mean rarer materials and tougher enemies.

| Distance | Zone | Difficulty | Main Output |
|----------|------|------------|-------------|
| 0 | Station Core | — | Storage / Processing / Command |
| Close | Asteroid Belt | Easy | Iron, Copper |
| Mid | Processing Satellite | Medium | Ingots, Plates, Circuits |
| Far | Rare Mineral Planet | Med-High | Titanium, Alloys, Relics |
| Far | Space Dock | Medium | Ships |
| Edge | Relic Sector | High | Endgame Tech |

### ❷ Wormholes Are Your Only Highway

No conveyor belts means wormholes are your interplanetary logistics backbone. Understanding demand-driven supply through Inventory Pairing matters more than any single building.

### ❸ Don't Skip Stages

New players hit the Rare Mineral Planet and wonder why they can't afford production lines. The answer: **your base isn't automated yet.** Get the Asteroid Belt and Processing Satellite running before you even look at wormholes.

<div class="pro-tip">
  <p><strong>One sentence for this map:</strong> Left = mine. Center = process. Right = expand. Follow this flow and you won't get stuck.</p>
</div>
