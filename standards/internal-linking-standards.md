# 正文内链规范（强制）

> 版本：2026-06-20  
> 适用范围：Outworld Station Guide（outworldstationguide.com）全部文章  
> 更新：此规范作为发布 SOP 的补充，每次发文前必须逐条核对

> 🔴 **2026-06-20 更新：内链数量上限从 4 改为 6**

---

## 一、核心原则

### 每篇文章必须自然插入 2-6 个正文内链

**这是硬性要求。** 少于 2 个说明连接不足，超过 6 个说明堆砌。同一篇文章不得重复链接同一目标（全文范围）。

---

## 二、内链的书写方式

### 2.1 必须融入正常段落

内链必须嵌在解释性文字中，不能单独列一行，也不能使用"Related Guides""Read More""You May Also Like"等推荐模块。

**正确示例：**

> Many players run out of cash before reaching this stage. If you're still struggling with early-game income, our [$10K in First Hour Guide](/guides/passive-income-trading/) explains the fastest money-making route.

> Production usually becomes the next bottleneck. See our [Workshop Guide](/guides/assembly-line-ratios/) for a complete automation setup.

**错误示例：**

> Read More: [Beginner Mistakes Guide](/guides/beginner-mistakes/)
>
> You May Also Like: [Research Order](/guides/research-order/)

---

### 2.2 必须说明为什么玩家需要查看

链接不能裸挂。每个内链必须回答"为什么现在点这个链接对你有帮助"。

**正确：**

> Your first outpost should stay within your home system. Once you're ready to scale across planets, the [Interplanetary Logistics Guide](/guides/interplanetary-logistics-guide/) walks through the jump-drive setup.

**错误（无上下文）：**

> See [Interplanetary Logistics Guide](/guides/interplanetary-logistics-guide/).

**判断标准：**

删除链接后，段落依然是一段自然的人类攻略内容。

例：将上面正确示例的链接文字去掉得到"Your first outpost should stay within your home system. Once you're ready to scale across planets, the walks through the jump-drive setup."——去掉链接标记后句子仍然通顺，信息完整。

---

### 2.3 必须符合玩家成长路径和问题解决逻辑

链接的阅读对象是**正在读当前文章的玩家**，不是搜索引擎。问自己：读完这句话，玩家下一步最可能卡在哪里？然后链接到能解决那个卡点的文章。

**玩家阶段判断：**

| 当前文章定位 | 应链接到 |
|---|---|
| 入门/新手 | 同一阶段的基础文章，或下一阶段的过渡文章 |
| 中期进阶 | 前置基础文章（如果玩家需要补课），或更深的进阶文章 |
| 后期/终局 | 前置中期的关键文章，或同类高级话题 |

---

## 三、禁止事项

### 3.1 禁止堆砌链接

同一段落内最多 1 个内链。全文不超过 6 个不同的目标文章。

### 3.2 禁止生硬推荐

不得使用"相关文章""推荐文章""更多阅读"等模块化表述。所有链接入口必须是上下文的自然组成部分。

### 3.3 禁止重复链接同一篇文章（全文范围内）

同一篇文章内不得链接到同一目标两次。例外：同一链接出现在 callout 区块中且正文已有一次（如 callout 内的快捷跳转），但应尽量避免。

---

## 四、链接目标选择优先级

选定链接目标时，按以下优先级选：

1. **前置知识**：玩家读当前文章前可能漏掉的基础文章
2. **下一阶段**：解决当前文章提到的"下一步问题"的文章
3. **同类扩展**：同分类下互补的进阶玩法
4. **反向推荐**：If this is too hard, try this simpler guide first

**分配比建议：** 每篇文章的 2-6 个链接中，1-2 个指向前置/基础，1-2 个指向下一步/进阶。

---

## 五、锚文本规范

### 5.1 锚文本必须有意义

使用文章标题的简写形式，不能使用"这里""点击""this guide""link"等空洞文字。

**正确：** "[Research Order Guide](/guides/research-order/)"
**错误：** "here" "click here" "查看详情"

### 5.2 锚文本长度

2-6 个单词。太长会破坏阅读节奏，太短无法传达信息。

**正确：** "our Freighter and Mining Guide"
**太长：** "our comprehensive Freighter and Mining Station Automation Guide for Outworld Station"
**太短：** "this guide"

---

## 六、发布前检查清单

每次发文前，逐条核实：

- [ ] 全文有 2-6 个内链？
- [ ] 每个内链都在正常段落里（不在单独行/模块中）？
- [ ] 每个内链都解释了"为什么现在要看"？
- [ ] 没有任何一个内链是裸挂的（去掉链接后段落仍通顺）？
- [ ] 没有重复链接到同一篇文章？
- [ ] 锚文本是自然的关键词（不是"here""click"）？
- [ ] 链接分布覆盖了前置知识 + 下一阶段（不全是同一类型）？
- [ ] 没有使用"Related Guides""Read More"等模块？

---

## 七、现存文章审查结果

对当前 40 篇文章的排查结果，以下文章需要补充内链：

| 文章 | 当前内链数 | 建议补充 |
|---|---|---|
| remote-mining-outpost-guide | 0 | Freighter & Mining Guide, Interplanetary Logistics Guide, Planet Environment Guide |
| passive-income-trading | 0 | Research Order Guide, Freighter & Mining Guide, Mid-Game Expansion Strategy |
| automated-smelter-refinery-design | 1 | Assembly Line Ratios, Pipe Bottleneck Guide, Buffer Storage Strategy |
| storage-network-design | 1 | Advanced Inventory Pairing, Buffer Storage Strategy, Overflow Sink Management |
| cargo-drone-network-optimization | 1 | Cargo Drone Network, Buffer Storage Strategy, Station Layout Guide |

以下文章内链超标，需要精简至 4 个以内：

| 文章 | 当前内链数 | 建议删除 |
|---|---|---|
| drone-defense-guide | 6 | 上限调整至 6，已合规 ✅ |
| superalloy-guide | 6 | 上限调整至 6，已合规 ✅ 但 Pipe Bottleneck 重复了 1 次，建议去重 |

---

## 八、SOP 更新

将此规范添加到 `Outworld-Station-发布SOP.md` 的"发布前检查清单"部分。每次发文前和写文章时，以此规范为最低标准。
