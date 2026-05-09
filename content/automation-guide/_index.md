---
title: "自动化系统完全解析 — 隐形物流管线与星际供应链"
description: "Outworld Station 自动化系统完全解析。从隐形物流管线配置、库存配对、虫洞供应链到效率优化策略，一文搞懂全自动化。"
date: 2026-05-09
lastmod: 2026-05-09
draft: false
---

## 从手动到自动：理解 Outworld Station 的自动化哲学

Outworld Station 与异星工厂（Factorio）最大的不同在于——**没有传送带**。取而代之的是一套**隐形物流管线（Invisible Logistics Pipeline）**系统。这也意味着你的设计思路需要彻底转变。

<div class="callout callout-verdict">
  <h4>一句话概括</h4>
  <p>隐形物流管线 = 生产端和消费端之间的自动库存匹配系统。你不铺路，只配流量。</p>
</div>

---

## 第一章：隐形物流管线基础

### 1.1 什么是隐形物流管线？

传统工厂游戏（异星工厂、满意工厂）依赖实体传送带或管道运输物品。Outworld Station 采用的是**直接库存链接**：当建筑 A 的 Output 匹配到建筑 B 的 Input，系统会自动在两者之间建立一条"看不见"的物流通道。

**这个设计的优势：**
- 节省大量空间（不用铺传送带）
- 修改产线极其方便（只需改配对，不用拆带子）
- 全自动故障恢复（消费端停摆，生产端自动积压）

### 1.2 基础配对操作

1. 点击**生产建筑**（如 Smelter）
2. 打开 **Inventory** 标签
3. 在 Output 栏点击 **Pair** 按钮
4. 选择目标**存储容器**或**消费建筑**
5. 确认配对——隐形管线建立

<div class="pro-tip">
  <p><strong>效率进阶：</strong> 按住 <strong>Shift</strong> 再点击 Pair，可以快速配对到<strong>最近的同类型建筑</strong>。在密集工厂区，这比手动选择快 10 倍。</p>
</div>

### 1.3 关键限制

| 限制项 | 数值 | 说明 |
|-------|------|------|
| 单建筑最大输出管线 | 4 条 | 需要规划产出分流 |
| 单建筑最大输入管线 | 6 条 | 高级建筑可升级 |
| 管线最大距离 | 200 单位 | 超限需要用中继站 |
| 单管线传输速率 | 15 单位/秒 | 可通过升级提升 |

---

## 第二章：库存管理策略

### 2.1 三种库存模式

每个存储容器（Storage Container）有三种工作模式：

- **Buffer Mode（缓冲模式）** — 默认模式。平衡进出速率
- **Priority Output（优先输出）** — 优先向外输送，适用于中转站
- **Reserve Stock（保留库存）** — 保留一定数量不外输，用于应急储备

### 2.2 缓冲设计黄金法则

<div class="synergy-table-wrapper">
<table class="synergy-table">
  <thead>
    <tr><th>产线层级</th><th>推荐缓冲量</th><th>模式</th></tr>
  </thead>
  <tbody>
    <tr><td>原材料摄入</td><td>200 单位</td><td>Buffer</td></tr>
    <tr><td>半成品加工</td><td>100 单位</td><td>Buffer</td></tr>
    <tr><td>成品输出</td><td>50 单位</td><td>Priority Output</td></tr>
    <tr><td>中间资源</td><td>300 单位</td><td>Reserve Stock</td></tr>
  </tbody>
</table>
</div>

---

## 第三章：虫洞星际供应链

### 3.1 虫洞基础机制

当你在一个星球上建好空间站并铺设虫洞发生器（Wormhole Generator），你可以连接到另一个星球的同名建筑。连接后：

- 两个空间站的库存**逻辑上合并**
- 隐形物流管线可以**跨虫洞**配对
- 传输速度取决于虫洞等级（Lv1 = 5单位/秒，Lv3 = 20单位/秒）

### 3.2 星际供应链设计模式

**模式一：原料星球 → 加工星球**
优点：在稀有资源星球上只放采矿设施，送回主星加工
配置：采矿星球设为 Priority Output，主星设为 Buffer

**模式二：专业化星球集群**
优点：每个星球专注一种产品，形成供应链网络
配置：A星球产芯片 → B星球产装甲 → C星球总装星舰

**模式三：边境前哨**
优点：在敌对区域的星球设立防御前哨
配置：主星 Priority Output 送补给至边境星

<div class="callout callout-synergy">
  <h4>S级策略：三阶段虫洞升级计划</h4>
  <p><strong>Phase 1（0-2小时）：</strong> 主星内部管线，不连虫洞</p>
  <p><strong>Phase 2（2-8小时）：</strong> 1-2条 Lv1 虫洞，连接资源星球</p>
  <p><strong>Phase 3（8小时+）：</strong> 虫洞升至 Lv3，构建完整星际网络</p>
</div>

---

## 第四章：效率优化高级技巧

### 4.1 瓶颈定位公式

```
实际产出 = 最低速率节点 × 节点数量
```

例子：3 个采矿钻机（每个 5/秒）→ 2 个熔炉（每个 7/秒）= 产出被熔炉限制在 **14/秒**（而非 15/秒）

### 4.2 常用优化方案

<div class="split-col">

<div class="col">
  <h4>升产能</h4>
  <ul>
    <li>采矿钻机数量 +1</li>
    <li>熔炉升级 → Advanced Smelting</li>
    <li>管线升级 Logistics II</li>
  </ul>
</div>

<div class="col">
  <h4>降消耗</h4>
  <ul>
    <li>科技降耗（Efficiency模块）</li>
    <li>高质量原料减少废品</li>
    <li>合理缓冲区减少停摆</li>
  </ul>
</div>

</div>

<div class="pro-tip">
  <p><strong>100小时以上老指挥官的秘诀：</strong> 不要追求完美平衡。工厂自动化的核心不是"刚刚好"，而是<strong>"永远有点溢出"</strong>。产线略微过剩 → 库存自然积累 → 下游扩张时不用改造上游。记住：过剩等于弹性。</p>
</div>

---

<div class="ad-slot" style="margin: 24px 0;">
  <div class="ad-label">— Sponsored —</div>
  <div class="ad-placeholder">Google AdSense — In-Article Ad Unit</div>
</div>
