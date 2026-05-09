---
title: "星系图 | 全资源星系与物流路线"
description: "Outworld Station 星系图：从小行星带到虫洞链路的完整布局图。交互式太空星图，让你一眼看清你的空间站在哪里、下一步往哪发展。TAU星系全览。"
date: 2026-05-09
lastmod: 2026-05-09
draft: false
---

## 你的空间站，在星系中的位置

Outworld Station 不是一张固定地图——**你的创业基地就是中心点**，周围的小行星带、近邻星球、虫洞链路都是你逐步扩张的舞台。

下面这张星图展示了 R-TAU 星系的天体布局。**点击任意星球节点查看详情。**

<div id="starmap-canvas-container">
  <canvas id="starmap-canvas"></canvas>
  <div id="starmap-info-panel" class="starmap-panel">
    <button id="starmap-panel-close" class="starmap-panel-close">✕</button>
    <div id="starmap-panel-content"></div>
  </div>
  <div id="starmap-legend" class="starmap-legend">
    <div class="legend-title">图例</div>
    <div class="legend-item"><span class="legend-dot" style="background:#00d4aa;"></span> 已探索区域</div>
    <div class="legend-item"><span class="legend-dot" style="background:#3b7dd8;"></span> 开采区</div>
    <div class="legend-item"><span class="legend-dot" style="background:#ff9f43;"></span> 加工区</div>
    <div class="legend-item"><span class="legend-dot" style="background:#a855f7;"></span> 高级区域</div>
    <div class="legend-item"><span class="legend-dot" style="background:#ef4444;"></span> 危险区</div>
    <div class="legend-item" style="margin-top:8px;"><span style="display:inline-block;width:20px;height:2px;background:linear-gradient(90deg,transparent,rgba(0,212,170,0.6),transparent);margin-right:6px;border-radius:1px;"></span> 虫洞链路</div>
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
      label: '空间站核心',
      sub: '你的起点',
      color: '#00d4aa',
      zone: 'safe',
      radius: 28,
      orbitRadius: 0,
      connections: ['asteroid'],
      detail: {
        title: '🛰 空间站核心',
        phase: '新手期',
        body: '<p><strong>位置：</strong>R-TAU 星系的初始坐标，你的创业基地。</p><p><strong>功能：</strong>所有自动化生产线的起点。存放初始熔炉、装配机、仓库。</p><p><strong>核心装备：</strong></p><ul><li>4-6 块太阳能板（开局够用）</li><li>1-2 个小型电池</li><li>至少 1 个中型容器（建议升 Storage II）</li><li>2-3 个炮台（第 30 分钟虫洞入侵用）</li></ul><p><strong>提示：</strong>把空间站拖到离最近的矿区越近越好——前 1 小时的运输效率看这一步。</p><a href="./beginner/" class="starmap-link">查看新手入门 →</a>'
      }
    },
    {
      id: 'asteroid',
      x: 0.2, y: 0.35,
      label: '小行星带',
      sub: '铁 / 铜 / 基础矿',
      color: '#3b7dd8',
      zone: 'mining',
      radius: 22,
      orbitRadius: 0.12,
      connections: ['station', 'refinery'],
      detail: {
        title: '🌇 小行星带',
        phase: '早期',
        body: '<p><strong>位置：</strong>空间站核心附近的陨石聚集区。</p><p><strong>产出资源：</strong>铁矿石（Iron Ore）、铜矿石（Copper Ore）、少量煤炭。</p><p><strong>发展阶段：</strong><span class="phase-tag phase-early">早期</span></p><p><strong>操作流程：</strong></p><ul><li>在小行星表面架设 Mining Drill</li><li>建 Solar Panel 供电</li><li>Inventory → Pair 到空间站仓库</li></ul><p><strong>注意：</strong>一块小行星的矿采完，钻机要搬到下一块。前期至少踩 2-3 块小行星才能稳住基础产线。</p><a href="./resources/" class="starmap-link">查看资源指南 →</a>'
      }
    },
    {
      id: 'refinery',
      x: 0.35, y: 0.15,
      label: '加工卫星',
      sub: '熔炼 / 组装',
      color: '#ff9f43',
      zone: 'processing',
      radius: 20,
      orbitRadius: 0.2,
      connections: ['asteroid', 'rare'],
      detail: {
        title: '🛸 加工卫星',
        phase: '早期 → 中期',
        body: '<p><strong>位置：</strong>可在空间站扩展模块中设置，或另建独立站。</p><p><strong>功能：</strong>将原料转化为可用的材料和零件。</p><p><strong>发展阶段：</strong><span class="phase-tag phase-early">早期</span> → <span class="phase-tag phase-mid">中期</span></p><p><strong>核心建筑：</strong></p><ul><li>Smelter（熔炉）：铁矿石 → 铁锭</li><li>Assembler（装配机）：铁锭 → 铁板 / 零件</li><li>Circuit Fabricator（电路工厂）：铜 + 碳 → 电路板</li></ul><p><strong>布局建议：</strong>加工卫星尽量靠近矿源和仓库中心。Inventory Pair 的逻辑是：输入端 Pair 到矿仓，输出端 Pair 到成品仓。</p><a href="./automation-guide/" class="starmap-link">查看自动化指南 →</a>'
      }
    },
    {
      id: 'rare',
      x: 0.8, y: 0.3,
      label: '稀有矿星',
      sub: '钛 / 硅 / 合金',
      color: '#a855f7',
      zone: 'advanced',
      radius: 22,
      orbitRadius: 0.35,
      connections: ['refinery', 'shipyard'],
      detail: {
        title: '💎 稀有矿星',
        phase: '中期 → 后期',
        body: '<p><strong>位置：</strong>通过虫洞连接的远程星球，离空间站 2-3 跳。</p><p><strong>产出资源：</strong>钛矿（Titanium）、硅（Silicon）、稀有合金、外星遗物碎片。</p><p><strong>发展阶段：</strong><span class="phase-tag phase-mid">中期</span> → <span class="phase-tag phase-late">后期</span></p><p><strong>注意事项：</strong></p><ul><li>需要在科技树解锁 Logistics II 才能稳定供应</li><li>虫洞传输有延迟——远程矿仓容量要加倍</li><li>这些星球的敌对单位更强，先派侦察船探路</li><li>外星遗物碎片可以在核心站解锁特殊升级</li></ul><a href="./resources/" class="starmap-link">查看资源全说明 →</a>'
      }
    },
    {
      id: 'shipyard',
      x: 0.7, y: 0.65,
      label: '太空船坞',
      sub: '星舰建造',
      color: '#a855f7',
      zone: 'advanced',
      radius: 20,
      orbitRadius: 0.38,
      connections: ['rare', 'endgame'],
      detail: {
        title: '🚌 太空船坞',
        phase: '中期 → 后期',
        body: '<p><strong>位置：</strong>需要在科技树解锁 Shipyard I 后建造。</p><p><strong>功能：</strong>建造侦察船、货运输船、战斗舰。</p><p><strong>发展阶段：</strong><span class="phase-tag phase-mid">中期</span> → <span class="phase-tag phase-late">后期</span></p><p><strong>造船顺序建议：</strong></p><ol><li><strong>第一艘：侦察船</strong> — 探开周边星图，标记资源丰富的星区</li><li><strong>第二艘：货运输船</strong> — 跑远程航线，把稀有矿星的东西拉回主站</li><li><strong>第三艘：武装舰</strong> — 应对虫洞入侵升级版的敌人</li></ol><p><strong>隐藏技巧：</strong>货运输船可以不配武器只配货舱，便宜又好用。等航线稳定了再升级武装版本。</p><a href="./building-tutorial/" class="starmap-link">查看建筑教程 →</a>'
      }
    },
    {
      id: 'endgame',
      x: 0.5, y: 0.85,
      label: '遗物星域',
      sub: '方舟 / 终极科技',
      color: '#ef4444',
      zone: 'danger',
      radius: 24,
      orbitRadius: 0.45,
      connections: ['shipyard'],
      detail: {
        title: '🔡 遗物星域',
        phase: '终局',
        body: '<p><strong>位置：</strong>星系边缘，需要多条虫洞链路到达。</p><p><strong>产出：</strong>方舟飞船蓝图、终极科技升级、外星能量核心。</p><p><strong>发展阶段：</strong><span class="phase-tag phase-late">终局</span></p><p><strong>这是游戏的最终目标吗？</strong></p><p>目前 EA 版本中，遗物星域是已知的最远端区域。推测后续更新会在此区域扩展更多内容。当前你能做的：</p><ul><li>探索遗迹遗址，解锁特殊升级</li><li>收集足够的方舟组件材料</li><li>与最多 3 名队友联机挑战强敌</li></ul><p><strong>注意：</strong>这条路线需要完整的星际供应链支持。如果你还在手动搬矿，就别急着跳虫洞了。</p><a href="./strategy/" class="starmap-link">进阶策略 →</a>'
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

      // Inner icon (simple geometric)
      if (node.id === 'station') {
        // Star shape
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
        // Danger icon
        ctx.fillStyle = 'white';
        ctx.font = (r * 0.85) + 'px sans-serif';
        ctx.textAlign = 'center';
        ctx.textBaseline = 'middle';
        ctx.fillText('⚡', nx, ny + 1);
      }

      // Label below node
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
      var r = node.radius + 20; // clickable area
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

## 星图使用指南

这张星图的逻辑建立在三条核心原则上：

### ❶ 距离决定复杂程度

越是靠近空间站核心的区域，资源越基础、建设越简单。越是远端的虫洞链路，资源越稀有、敌人越强。

| 距离 | 区域 | 难度 | 主要产出 |
|------|------|------|---------|
| 0 | 空间站核心 | — | 存储 / 加工 / 指挥 |
| 近距 | 小行星带 | 低 | 铁、铜 |
| 中距 | 加工卫星 | 中 | 铁锭、铁板、电路板 |
| 远距 | 稀有矿星 | 中高 | 钛、合金、遗物 |
| 远距 | 太空船坞 | 中 | 星舰 |
| 极远 | 遗物星域 | 高 | 终极科技 |

### ❷ 虫洞是真正的交通命脉

没有传送带，虫洞就是高速公路。Inventory Pair 操作的本质就是建立虫洞物流链路。理解「需求驱动」的供需匹配逻辑，比任何单个建筑的操作都重要。

### ❸ 不要跳阶段

很多新人走到稀有矿星发现「建不起生产线」，因为**基础产线还没自动化**。先把小行星带和加工卫星的产线跑顺了，再考虑跨虫洞扩张。

<div class="pro-tip">
  <p><strong>一句话记住这张图：</strong> 左边你采矿 → 中间你加工 → 右边你扩张。按这个思路走，不会卡关。</p>
</div>
