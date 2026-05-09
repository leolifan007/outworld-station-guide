---
title: "全建筑教程 — 从能源到星舰的完整模块指南"
description: "Outworld Station 全建筑攻略。能源、生产、防御、科技、星舰、物流六大类建筑全收录，附推荐建造顺序和常见翻车案例。"
date: 2026-05-09
lastmod: 2026-05-09
draft: false
---

## 这游戏有哪些建筑？先造什么后造什么？

大家第一次打开建造菜单（B）的时候，对着几十个英文建筑名，第一反应肯定是：这都是啥？

我把目前 EA 版本所有建筑整理了一遍，按大类分类，标注了哪个阶段该造什么、哪些可以晚点碰。

---

## 能源类（永远先搞这个）

<figure class="content-figure">
  <img src="https://picsum.photos/seed/power-buildings/800/400" alt="从太阳能板到聚变反应堆的能源演进" loading="lazy">
  <figcaption>从太阳能到聚变反应堆，能源升级是你扩张的命脉。顺序错了整条产线都会停。</figcaption>
</figure>

### 太阳能板（Solar Panel）
- **解锁：** 初始自带
- **产出：** 5 电力/秒
- **数量建议：** 前期至少 4-6 块
- **实测：** 够用，但不要完全指望它——稍后生产力上来了电量就不够了

### 小型反应堆（Small Reactor）
- **解锁：** 科技 → Reactor Tech I
- **产出：** 25 电力/秒
- **燃料：** 铀棒
- **注意：** 需要散热器！我第一台反应堆因为没装散热直接炸了……

<div class="callout callout-danger">
  <h4>反应堆安全须知</h4>
  <p>反应堆过热会爆炸，范围 15 单位。建反应堆时旁边至少放 2 个 Cooling Tower（散热器），且不要和其他建筑紧贴。我至少炸过两次才记住的。</p>
</div>

### 聚变反应堆（Fusion Reactor）
<figure class="content-figure">
  <img src="https://picsum.photos/seed/fusion-reactor/800/400" alt="聚变反应堆结构示意" loading="lazy">
  <figcaption>聚变反应堆：安静高效，终极能源。前提是你能搞到氦-3。</figcaption>
</figure>

- **解锁：** 科技 → Fusion Tech（后期）
- **产出：** 100 电力/秒
- **燃料：** 氦-3（需要去气体巨行星采集）
- **特点：** 安静高效，无需散热，终极能源

### 能源升级路线

| 时间段 | 方案 | 总电力 |
|--------|------|--------|
| 0-30 分钟 | 4-6 块太阳能板 | 20-30/秒 |
| 30 分钟-3 小时 | 1-2 小型反应堆 + 几块太阳能 | 50-80/秒 |
| 3 小时+ | 1 个聚变反应堆 | 100+/秒 |

---

## 采集与生产类

### 采矿钻机（Mining Drill）
- **解锁：** 初始自带
- **产出：** 5 矿石/秒
- **条件：** 必须放在小行星表面（绿色高亮位置）
- **坑：** 放上去之后要配 Inventory 才能自动运矿

### 熔炉（Smelter）
- **解锁：** 初始
- **矿石 → 锭：** 7 单位/秒
- 铁矿 → 铁锭，铜矿 → 铜锭，硅矿 → 硅晶

### 装配机（Assembler）
- **解锁：** 科技 Assembly I
- **用途：** 把锭/合金加工成零件
- **可配配方：** 建好后点它选配方

### 高级冶炼厂（Advanced Smelter）
- **解锁：** 科技 Advanced Smelting
- **产出：** 10 单位/秒
- **用途：** 做合金（钢合金、合金板等）

### 化工厂（Chemical Plant）
<figure class="content-figure">
  <img src="https://picsum.photos/seed/chemical-plant/800/400" alt="化工厂布局" loading="lazy">
  <figcaption>化工厂是 T3 材料的核心建筑。铀加工请务必远程操作，安全第一。</figcaption>
</figure>

- **解锁：** 科技 Chemistry
- **用途：** 高端材料（燃料棒等）
- **条件：** 需要气体资源管线

---

## 物流与存储类

### 存储容器（Storage Container）
- **基础容量：** 100 单位
- **升级（Storage II）：** 200 单位
- **三种模式：** Buffer / Priority Output / Reserve Stock（具体用法见自动化那篇）

### 物流中继站（Logistics Relay）
- **解锁：** 科技 Logistics II
- **干嘛用：** 管线超 200 单位距离时当中继
- **注意：** 占空间，能不用就不用

### 虫洞发生器（Wormhole Generator）
<figure class="content-figure">
  <img src="https://picsum.photos/seed/wormhole-gen/800/400" alt="虫洞发生器装置" loading="lazy">
  <figcaption>两个相同的编号 = 跨星球库存合并。Lv3 虫洞传输速率 20 单位/秒，够你养三条主产线。</figcaption>
</figure>

- **解锁：** 科技 Wormhole Tech
- **用途：** 跨星球链接库存
- **规则：** 两端各建一个，编号要一样
- **升级：** Lv1=5 单位/秒，Lv3=20 单位/秒

---

## 防御类（别忘了！）

### 炮台（Turret）
- **解锁：** 科技 Defense I
- **弹药：** 铁板弹
- **范围：** 30 单位
- **建议：** 每个虫洞入口至少放 2-3 个
- **经验：** 我第一把没建炮台，第 30 分钟被入侵直接团灭。这教训很深刻。

### 护盾发生器（Shield Generator）
<figure class="content-figure">
  <img src="https://picsum.photos/seed/shield-gen/800/400" alt="护盾发生器保护范围示意" loading="lazy">
  <figcaption>50 单位的保护罩——很能扛，但一秒吃掉 50 电力。没稳定能源之前别碰。</figcaption>
</figure>

- **解锁：** 科技 Shield Tech
- **范围：** 50 单位
- **代价：** 巨耗电——50 电力/秒
- **建议：** 有了稳定能源后再搞

### 导弹发射台（Missile Launcher）
- **解锁：** 科技 Advanced Defense
- **弹药：** 合金 + 炸药
- **范围：** 80 单位
- **特点：** 打大怪专用，杀鸡不用牛刀

---

## 科技与星舰类

### 科研实验室（Research Lab）
- **解锁：** 初始
- **需要：** 科研数据包（每 30 秒消耗 1 个）
- **建议：** 多个实验室并联可以加速研究

### 造船厂（Shipyard I / II）
- **Shipyard I：** 造侦察船、运输船
- **Shipyard II：** 造战斗舰、方舟组件
- **我的经验：** 先造侦察船探路，战斗舰等你缺某样稀有资源的时候再造

### 方舟平台（Ark Platform）
- **解锁：** 终局科技
- **用途：** 造方舟飞船——游戏最终目标
- **材料：** 大量合金、反物质核心、外星遗物
- **慢慢来：** 这不是几个小时能搞定的，中期开始攒材料就行

---

## 建造优先级路线

<div class="split-col">

<div class="col">
  <h4>Phase 1（0-30 分钟）</h4>
  <ol>
    <li>太阳能板 x4</li>
    <li>采矿钻机 x2</li>
    <li>熔炉 x1</li>
    <li>装配机 x1</li>
    <li>存储容器 x2</li>
  </ol>
</div>

<div class="col">
  <h4>Phase 2（30 分-2 小时）</h4>
  <ol>
    <li>小型反应堆 x1</li>
    <li>高级冶炼厂 x1</li>
    <li>科研实验室 x1</li>
    <li>炮台 x3</li>
    <li>造船厂 x1</li>
  </ol>
</div>

</div>

<div class="split-col">

<div class="col">
  <h4>Phase 3（2-8 小时）</h4>
  <ol>
    <li>化工厂 x1</li>
    <li>虫洞发生器 x2</li>
    <li>护盾发生器 x1</li>
    <li>开始建第二个空间站</li>
  </ol>
</div>

<div class="col">
  <h4>Phase 4（8 小时+）</h4>
  <ol>
    <li>聚变反应堆 x1</li>
    <li>导弹发射台 x2</li>
    <li>Shipyard II（战斗舰）</li>
    <li>方舟平台</li>
  </ol>
</div>

</div>

<div class="pro-tip">
  <p><strong>别死守这个顺序。</strong> 游戏是动态的，如果你发现了稀有合金矿，可以提前解锁 Advanced Smelting。规则是让你参考的，不是让你盲从的。</p>
</div>

---

<div class="ad-slot" style="margin: 24px 0;">
  <div class="ad-label">— 广告 —</div>
  <div class="ad-placeholder">广告位（上线前替换为 AdSense 代码）</div>
</div>
