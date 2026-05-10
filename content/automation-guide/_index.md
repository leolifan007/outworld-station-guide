---
title: "自动化系统完全解析 — 隐形物流管线与星际供应链"
description: "Outworld Station 自动化攻略：没有传送带怎么玩？库存配对、虫洞供应链、效率优化。这篇把物流系统的坑全部画出来。"
date: 2026-05-09
lastmod: 2026-05-09
draft: false
---

## 没有传送带，那怎么运？

<figure class="content-figure">
  <img src="/outworld-station-guide/images/no-conveyor.webp" alt="Outworld Station 隐形物流管线示意" loading="lazy">
  <figcaption>这游戏没有传送带。刚开始你可能觉得被砍了左手，实际上它给了你一套更省空间的方案。</figcaption>
</figure>

Outworld Station 最大的特点（也是最大的学习成本）就是——**没有传送带**。

玩过异星工厂的都知道，光铺传送带就能铺几十个小时。这游戏直接砍掉了实体传送，换了一套"隐形物流管线"。我第一次玩的时候找了半天传送带按钮，后来才明白：不是我没找到，而是真的没有。

<div class="callout callout-verdict">
  <h4>一句话说明白</h4>
  <p>隐形物流管线 = 生产端和消费端之间的自动库存匹配。你不铺路，只告诉它们"矿从这里送到那里"，系统帮你搞定中间的所有运输。</p>
</div>

---

## 第一章：隐形物流管线怎么配

### 什么是隐形物流管线？

传统工厂游戏靠传送带、管道或者无人机。Outworld Station 用的是**直接库存链接**：

当你把建筑 A 的 Output 关联到建筑 B 的 Input，系统会在两者之间自动建一条"看不见的"物流通道。不需要占空间，不需要维护。

**这设计的优点：**
- 省空间——不用给传送带留位置
- 容易改——改配对就行，不用拆带子
- 自动恢复——下游停了，上游自己积压，不会堵带子

**缺点（也是你最需要适应的）：**
- 看不见摸不着——调试不方便
- 有距离限制——太远了要用中继站
- 初期很容易忘记配对，然后纳闷"为什么我的厂没有在动"

### 配对操作（你真正需要记住的）

<figure class="content-figure">
  <img src="/outworld-station-guide/images/pair-button.webp" alt="Pair 按钮在 Inventory 面板的位置" loading="lazy">
  <figcaption>点 Pair → 选目标建筑 → 搞定。比想象中简单，但我第一次也找了五分钟这个按钮在哪。</figcaption>
</figure>

1. 左键点击**生产建筑**（比如熔炉 Smelter）
2. 在弹出面板里选 **Inventory** 标签
3. 往下翻，Output 栏右边有个 **Pair** 按钮，点它
4. 鼠标移动到目标存储容器或消费建筑上，左键确认
5. 配对完成——你不需要看到一条线，但系统已经开始自动运输

<div class="pro-tip">
  <p><strong>快捷键：</strong> 按住 <strong>Shift</strong> 再点 Pair，会自动配对到<strong>最近的同类型建筑</strong>。在工厂密集区用这个，比手动点快 10 倍。我是玩到第 3 个小时才发现这个的……</p>
</div>

### 配对有哪些限制

| 项目 | 限制 | 怎么解决 |
|------|------|----------|
| 单建筑最多输出管线 | 4 条 | 控制分叉数量，不够就加中转站 |
| 单建筑最多输入管线 | 6 条 | 高级建筑可以升级 |
| 管线最远距离 | 200 单位 | 超了要建 Logistics Relay（物流中继站） |
| 单管线传输速率 | 15 单位/秒 | 升级 Logistics 科技可以提升 |

---

## 第二章：库存管理——很多人忽略的关键

### 三种存储模式

<figure class="content-figure">
  <img src="/outworld-station-guide/images/storage-modes.webp" alt="存储容器三种模式切换界面" loading="lazy">
  <figcaption>Buffer / Priority Output / Reserve Stock — 三种模式决定你的库存策略。新手用 Buffer 就够。</figcaption>
</figure>

每个 Storage Container 可以设置三种模式（点击仓库 → Mode 栏切换）：

- **Buffer Mode（缓冲模式）** — 默认。进出平衡，适合大多数场景
- **Priority Output（优先输出）** — 有货就往外送。适合做中转库
- **Reserve Stock（保留库存）** — 囤货不外输。适合做应急储备

### 我的库存配置方案

| 产线位置 | 仓库数量 | 用什么模式 | 理由 |
|----------|----------|------------|------|
| 原材料入口 | 2 个 | Buffer | 平衡钻机速度和熔炉需求 |
| 半成品加工 | 1 个 | Buffer | 加工站之间做缓冲 |
| 最终成品 | 1 个 | Priority Output | 优先供应高级生产线 |
| 关键材料（铀、合金） | 1 个 | Reserve Stock | 怕断供，备着应急 |

---

## 第三章：跨星球运输——虫洞怎么用

### 虫洞不是传送门，是供应链

<figure class="content-figure">
  <img src="/outworld-station-guide/images/wormhole-link.webp" alt="虫洞发生器连接两个星球示意" loading="lazy">
  <figcaption>两个 Wormhole Generator 设相同编号 = 它们之间的库存自动同步。这就是星际高速公路。</figcaption>
</figure>

当你有了第二个空间站（或者去其他星球建了前哨站），你就需要虫洞来连接不同星球的库存。

**操作：**
1. 在两个空间站各建一个 **Wormhole Generator**
2. 两个发生器设置相同的编号（比如都是 1 号）
3. 它们自动连通——两边的库存合并计算
4. 然后在不同站建筑之间做 Pair 配对——系统会跨虫洞运输

### 三种虫洞布局方案

**方案一：原料星球 → 加工星球（适合前期）**
在稀有资源星球只放钻机和矿仓，设置 Priority Output，矿自动送回主星加工。最简单最稳。

**方案二：专业化星球集群（中期）**
A 星球产芯片 → B 星球产装甲 → C 星球总装。适合长期运营，但前期别搞这个——你会管不过来的。

**方案三：边境前哨（防御型）**
在敌对区域星球设立武装前哨，主星定期送补给过去。

<div class="callout callout-synergy">
  <h4>虫洞升级节奏</h4>
  <p><strong>0-2 小时：</strong> 只玩主星内部管线，别碰虫洞。</p>
  <p><strong>2-8 小时：</strong> 建 1-2 条 Lv1 虫洞，连接最近的资源星球。</p>
  <p><strong>8 小时+：</strong> 虫洞升到 Lv3，连接 3-4 个星球构建网络。</p>
  <p>提前开虫洞 = 提前给自己找麻烦。先把主星玩透了再说。</p>
</div>

---

## 第四章：效率优化——别追求完美

### 找瓶颈的方法

```
实际产出 = 最慢的节点 × 同节点数量
```

举个例子：3 个采矿钻机（每个 5/秒）→ 2 个熔炉（每个 7/秒）
- 3 个钻机理论上产 15/秒
- 但 2 个熔炉只能处理 14/秒
- 所以实际产出是 14/秒——瓶颈在熔炉

**解决方法：** 加 1 个熔炉或者把熔炉升级到 Advanced Smelter。

### 我的原则

<div class="pro-tip">
  <p><strong>100 小时后的经验：</strong> 不要追求"刚刚好"的平衡点。让产线<strong>微微过剩</strong>，库存自然积累，下游扩张时上游不用改。过剩 = 弹性。工厂自动化的核心不是精确配比，是冗余设计。</p>
</div>

<div class="split-col">

<div class="col">
  <h4>升产能</h4>
  <ul>
    <li>增加钻机数量</li>
    <li>熔炉升级 Advanced Smelting</li>
    <li>管线升级 Logistics II</li>
  </ul>
</div>

<div class="col">
  <h4>降消耗</h4>
  <ul>
    <li>点 Efficiency 模块科技</li>
    <li>高质量原料减少废品</li>
    <li>合理缓冲区减少停摆</li>
  </ul>
</div>

</div>

---

## 常见的自动化问题（群里翻了一轮）

### Q：Inventory Pair 之后什么都没发生？
检查距离。两个建筑之间超过 200 单位就要 Logistics Relay。另外确认建筑都通电了——没电的 Pair 是灰的。

### Q：我的产线为什么断断续续的？
八成是初级材料供应不够。检查原材料入口的库存，如果矿仓见底了就是钻机太少或者矿区采光了。钻机放久了会耗尽矿点，要挪位置。

### Q：Pair 了多个输出口，东西全跑一个方向去了？
默认模式下，Pair 的输出是随机分配的。想控制流向，把接收端的 Storage Container 改成 Priority Output，它会优先承接收。

### Q：虫洞怎么配才能不吃太多电力？
虫洞本身耗电不大（5-15 电力/秒），真正吃电的是跨星球的物流管线。方案：虫洞只连仓库不连产线，让虫洞那边的仓库自行跟产线做 Pair。

### Q：Logistics Relay 要建多少？
越少越好。规划产线的时候尽量拉近距离，超过 200 单位才需要 Relay。全塞 Relay 会占很多空间，后期改布局时非常痛苦。我上一次拆 15 个 Relay 拆了半小时。

### Q：多人联机时物流怎么算的？
每个人的库存是独立的，但共享配对关系。意思是队友建的建筑你可以直接 Pair 它的输出。但管理不当容易两个人抢同一条输出线——建议分工明确，一人管一条产线。

---

## 一句话

**永远让产线微过剩，库存微积压。** 只要材料堆着没堵住，瓶颈就不急。有空再慢慢优化，先让工厂跑起来最重要。

---

<div class="ad-slot" style="margin: 24px 0;">
  <div class="ad-label">— 广告 —</div>
  <div class="ad-placeholder">广告位（上线前替换为 AdSense 代码）</div>
</div>
