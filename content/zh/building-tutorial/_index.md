---
title: "全建筑教程 — 从能源到星舰的完整模块指南"
description: "Outworld Station 全建筑攻略。能源、生产、防御、科技、星舰、物流六大类建筑全收录，附推荐建造顺序和常见翻车案例。"
date: 2026-05-09
lastmod: 2026-05-09
draft: false
---

先看这个：建造优先级路线

如果你是刚打开建造菜单（B）的新手，对着几十个英文建筑名完全不知道点什么——**直接照这个顺序来，别多想**。

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

## 新手最容易建错的 5 个建筑

群里翻了一轮，下面几个建筑是大家吐槽最多的：

**1. 自动门（Auto Door）**
我以为它能防虫子入侵，结果它就是门——出门飞船自动开。P用没有还占电力。别建。

**2. 观察窗（Observation Window）**
纯装饰，看太空的。好看是好看，但前期材料紧张，别浪费。中后期搞装修再说。

**3. 气候控制器（Climate Controller）**
我以为它能隔绝辐射。**不能**。它只是调节空间站内部温度——对自动化和防御**零影响**。辐射防护请找 Sheild Generator 和专用防辐射模块。

**4. 减速模块（Deceleration Module）**
耗电 20/秒，作用是减缓飞船转向速度。我愿称之为"榜一大哥送的水炮"——完全不知道什么场景下需要这个。

**5. 无人机港（Drone Port）**
这个不算没用，但解锁科技花钱多、建起来巨占地方、前期产能根本喂不饱它。新手别碰，你连 Inventory Pair 都用不利索，搞什么无人机调度。

<div class="callout callout-danger">
  <h4>说认真的：前 2 小时别碰的 3 个东西</h4>
  <p><strong>无人机港、高级雷达、多功能坞站。</strong> 这三个建筑要么吃电像喝水，要么解锁路线绕一大圈。先把基础产线跑顺了再搞这些花活。</p>
</div>

---

## 能源类（永远先搞这个）

<figure class="content-figure">
  <img src="/images/power-evolution.webp" alt="从太阳能板到聚变反应堆的能源演进" loading="lazy">
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
  <img src="/images/fusion-reactor.webp" alt="聚变反应堆结构示意" loading="lazy">
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
  <img src="/images/chemical-plant.webp" alt="化工厂布局" loading="lazy">
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
  <img src="/images/wormhole-gen.webp" alt="虫洞发生器装置" loading="lazy">
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
  <img src="/images/shield-gen.webp" alt="护盾发生器保护范围示意" loading="lazy">
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

## 常见问题（群里问得最多的）

### Q：建筑点了但没反应？
八成是没电。二成是 Inventory 没配对。先看电力够不够，再看配对连没连。我 80% 的"为什么不动"都是这两个原因。

### Q：为什么我的采矿钻机不出矿？
三种可能：① 没电 ② 仓储满了 ③ 没有配 Output Pair。第三点是最容易忘的——钻机挖了矿但没地方送，它就停了。

### Q：反应堆为什么会爆炸？
散热不够。一个反应堆至少要配 2 个 Cooling Tower，而且不要挨着其他大建筑放。散热器被挡住会影响效率。

### Q：虫洞要几级才能用？
Lv1 就能用——5 单位/秒，够前期用了。Lv2 是 10/秒，Lv3 是 20/秒。不要等 Lv3 才开虫洞，Lv1 先连通资源星球再说。

### Q：护盾有必要建吗？
有稳定能源（聚变级）之前别碰。护盾一秒吃 50 电，前期你总共才 30-50 电，开护盾其他全部停摆。前期靠炮台，中期靠导弹，后期才上护盾。

### Q：Shipyard I 和 II 区别是什么？
I 造小型飞船（侦察船、运输船），II 造战斗舰和方舟组件。前期只建 I，别急着造 II。

### Q：炮台的弹药怎么补给？
炮台会自动从连接的 Inventory 链条拉铁板。保证你的铁板产线持续运转就行，断货了炮台就哑了。

### Q：第二空间站在哪里建？
去科技研究里找其他星球的扫描数据。建好望远镜（Telescope）后能看到周边星球的资源分布。优先选有稀有矿物（硅矿、铀矿）的星球。

### Q：这游戏能局域网联机吗？
能，最多 4 人 PVE。主菜单 → Join Game → 输入主机 IP。主机需要开端口转发。目前没有联机教程，后面如果需求多我再单独写一篇。

---

## 一句话总结

**能源 → 采矿 → 熔炼 → 装配 × 防御 = 第一阶段。** 搞顺了再谈虫洞、星舰、护盾那些花里胡哨的。别跳级，跳了就翻车。

<div class="ad-slot" style="margin: 24px 0;">
  <div class="ad-label">— 广告 —</div>
  <div class="ad-placeholder">广告位（上线前替换为 AdSense 代码）</div>
</div>
