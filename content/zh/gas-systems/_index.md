---
title: "气体系统完全指南 — Nitrox、氧气与生命维持"
description: "Outworld Station 气体系统：氧气是呼吸的，Nitrox 是给核反应堆用的，两个系统如何配合工作，如何避免窒息的致命陷阱。"
date: 2026-05-12
lastmod: 2026-05-12
draft: false
---

## 气体是空间站的血液

Outworld Station 里有两套气体系统：**氧气系统（O₂）**和 **Nitrox 系统**。前者给你呼吸，后者给聚变反应堆当燃料。

很多新手把这两套搞混了——以为氧气够了就行，结果建了聚变反应堆才发现 Nitrox 不够，聚变堆跑不起来。

这篇把两套系统的关系、建造方法、常见坑全部说清楚。

<div class="callout callout-verdict">
  <h4>一句话说明白</h4>
  <p>O₂ 系统 = 生命维持（必须，断了就死）。Nitrox 系统 = 聚变燃料循环（进阶，断了反应堆就没劲）。两个系统独立运行，但都与电力系统深度绑定。</p>
</div>

---

## 第一章：氧气系统 — 每秒都在消耗的生命线

<figure class="content-figure">
  <img src="/images/ss_2_thumb.jpg" alt="Outworld Station 氧气发生器" loading="lazy">
  <figcaption>氧气发生器将水分解为氧气和氢气，是空间站氧气的主要来源。</figcaption>
</figure>

### 氧气从哪里来？

氧气的主要来源是**电解水（Water Electrolysis）**：

```
水 (H₂O) → 电解 → 氧气 (O₂) + 氢气 (H₂)
```

需要一个 **Oxygen Generator**（氧气发生器）+ 供水管道 + 电力。

### 氧气系统组件

| 组件 | 功能 | 消耗 |
|------|------|------|
| Water Extractor（取水器） | 从环境/储水罐取水 | 电力 |
| Oxygen Generator（氧气发生器） | 将水电解成 O₂ | 水 + 电力 |
| O₂ Tank（氧气罐） | 储存氧气 | - |
| Air Recycler（空气循环器） | 回收舱内 CO₂ 重新利用 | 电力 |

### 建造顺序

```
第1步：建 Water Extractor × 1
第2步：建 Oxygen Generator × 2（冗余）
第3步：建 O₂ Tank × 2（储备）
第4步：建 Air Recycler × 1
第5步：连接到电网，启动
```

<div class="pro-tip">
  <p><strong>我踩过的坑：</strong> 只建了 1 个 Oxygen Generator，结果高峰期氧气不够，呼吸开始报警。后来加了第 2 个 Generator，两个一起跑就稳了。建议至少建 2 个，一个工作一个备用。</p>
</div>

---

## 第二章：Nitrox 系统 — 反应堆的燃料伙伴

<figure class="content-figure">
  <img src="/images/ss_9_thumb.jpg" alt="Outworld Station Nitrox 气体处理器" loading="lazy">
  <figcaption>Nitrox 是氮氧混合气体（79% 氮 + 21% 氧），是聚变反应堆的标准燃料。</figcaption>
</figure>

### 什么是 Nitrox？

Nitrox = **氮气（N₂）79% + 氧气（O₂）21%** 的混合气体。

它既是呼吸气的替代品（比纯氧更安全，燃烧风险更低），也是聚变反应堆的标准燃料。没有 Nitrox，聚变反应堆只能用氚储备硬撑，氚耗尽后就降频。

### Nitrox 系统组件

| 组件 | 功能 |
|------|------|
| Nitrogen Extractor（氮气提取器） | 从小行星/大气中提取氮气 |
| Nitrox Mixer（混合器） | 按比例混合氮气和氧气 |
| Nitrox Tank（储存罐） | 储存成品 Nitrox |
| Pipeline（管道） | 连接各组件的输送管线 |

### Nitrox 生产线设计

```
氮气提取器 → Nitrox 混合器 ← 氧气（来自 O₂ 系统）
                ↓
         Nitrox 储存罐 → 聚变反应堆
```

**关键点：Nitrox 混合器需要同时接入 O₂ 系统的氧气输出和氮气提取器的氮气输出。** 这就是为什么 O₂ 系统必须先建好。

---

## 第三章：两套系统的协同关系

<figure class="content-figure">
  <img src="/images/ss_18_thumb.jpg" alt="Outworld Station 气体系统全览" loading="lazy">
  <figcaption>完整的气体系统包括水提取、氧气发生、Nitrox 混合、储存和分配的全链路。</figcaption>
</figure>

### 氧气优先原则

**先保证氧气系统稳定运行，再建 Nitrox 系统。**

原因很简单：氧气断了人就会死，Nitrox 断了只是反应堆降频。在紧急情况下，氧气系统故障需要立即处理，Nitrox 系统故障可以延迟修复。

### 推荐的建造时序

| 阶段 | 目标 | 气体系统配置 |
|------|------|-------------|
| 开局（0-2 小时） | 建好呼吸保障 | O₂ Generator × 2 + O₂ Tank × 2 |
| 中期（2-10 小时） | 优化氧气 + 准备 Nitrox | O₂ 系统完善 + 氮气提取器试运行 |
| 后期（10+ 小时） | 连接聚变反应堆 | 完整 Nitrox 循环 + O₂/Nitrox 双供应 |

### 共用管道的注意事项

<figure class="content-figure">
  <img src="/images/ss_12_thumb.jpg" alt="Outworld Station 气体管道布局" loading="lazy">
  <figcaption>氧气和 Nitrox 使用不同的管道系统，不要混用，否则会导致气体纯度下降。</figcaption>
</figure>

O₂ 系统和 Nitrox 系统**各有独立的管道**，不要让它们混在一起：

- **蓝色管道**：O₂ 专用
- **绿色管道**：Nitrox 专用
- **混用会导致纯度下降**，影响呼吸效率和反应堆性能

---

## 第四章：气体系统的常见问题

### Q1：氧气够用但 Nitrox 不够，聚变反应堆降频了怎么办？

**增加氮气提取器的数量**：1 个 → 2-3 个。同时检查管道是否堵塞。

### Q2：两个 Generator 都在跑，但还是缺氧？

**检查取水器**：Water Extractor 可能产能不足。加 1 个取水器，或检查供水管道是否连接正常。

### Q3：Air Recycler 在回收 CO₂，但舱内氧气浓度还是在下降？

**可能是密封问题**：检查舱室连接处是否有漏气。空间站的舱段连接如果不密封，气体会泄漏到真空中。

<div class="callout callout-danger">
  <h4>警告：窒息是最快杀死空间站的方式</h4>
  <p>一旦氧气系统停止，船员开始掉血，空间站进入紧急状态。紧急情况请立即打开备用氧气罐（O₂ Emergency Tank），同时手动恢复主氧气系统。</p>
</div>

---

## 第五章：气体系统评级

| 阶段 | 配置 | 评级 | 稳定性 |
|------|------|------|--------|
| 开局（0-2h） | O₂ Gen × 1 + Tank × 1 | C | 有风险，单点故障 |
| 基础（2-5h） | O₂ Gen × 2 + Tank × 2 | B- | 基本稳定 |
| 完善（5-10h） | O₂ Gen × 2 + Recycler + Tank × 2 | B+ | 稳定 |
| 进阶（10-20h） | O₂ + 氮气提取 + 混合器 | A- | 聚变准备就绪 |
| 完整（20h+） | O₂ + Nitrox 循环 + 双储罐 | S | 完全自主，永久稳定 |

---

## 下一步

搞定了气体系统，你的空间站已经具备了运行聚变反应堆的条件。下一个关键系统是：

→ [电力管理完全指南：从太阳能到聚变](../power-management/)（如果你还没看过的话）
→ [小行星带采矿策略：搞定资源来源](../resources/)（如何持续供应建反应堆需要的铀矿和氮气）