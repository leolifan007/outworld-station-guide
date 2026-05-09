# Outworld Station 攻略站 - 项目初始化

> **创建时间：** 2026-05-09
> **执行角色：** 员工A（情报分析）/ 员工B（内容架构）/ 员工C（文案+前端）
> **技术栈：** Hugo + GitHub Pages（参考 Gambonanza 流程）

---

## 🎮 游戏基本信息

| 项目 | 数据 |
|---|---|
| **游戏名** | Outworld Station |
| **Steam App ID** | 2614220 |
| **类型** | 太空工厂自动化 / 基地建设 / 即时战略 |
| **开发商** | Trickjump Games Ltd |
| **发行商** | Trickjump Games Ltd |
| **Steam 发布** | 2026年5月5日（新品！） |
| **价格** | 约 HK$119 / HK$95.20（-20%折扣中） |
| **支持中文** | ❌ 暂不支持 |
| **Steam Deck** | 未认证 |
| **竞品Wiki** | ❌ 无 Fandom / 无 Gamepedia / 无官方Wiki |
| **YouTube 攻略** | 少量视频（The Dutch Actuary 等），无完整图文站 |

> ✅ **推荐理由：** 极新品窗口期，完全无Wiki，少数YouTube视频是唯一攻略来源。图文版有巨大竞争优势。

---

## 🏗 站点架构（员工B设计建议）

### 建议域名
- `outworldstation.com`（待查可用性）
- `outworld-station.com`
- `outworldstation.guide`
- `outworldstationguide.com`

### Hugo 主题
- 复用 gambonanza 主题模板（需改配色/品牌视觉）
- 或创建新主题

### 建议页面结构

```
/                          首页（SEO + 概要 + 广告位）
/beginner/                 新手入门（如何开始建站）
/building-tutorial/        全建筑教程（电力/防御/生产/科技）
/automation-guide/         自动化系统完全解析
/resources/                全资源说明（开采/加工/物流）
/combat-defense/           战斗与防御系统（虫洞/敌人）
/achievements/             成就指南
/faq/                      常见问题
/strategy/                 高级策略（终局/优化）
/updates-schedule/         更新追踪（EA期间持续更新）
/privacy/                  隐私政策（AdSense必需）
/contact/                  联系方式（AdSense必需）
```

---

## 📐 技术方案（员工C执行）

### Hugo 初始化
```bash
cd projects\outworld-station-guide
hugo new site . --force
# 复制/修改 gambonanza 主题 或 新建主题
# 修改 hugo.toml baseURL
```

### GitHub 仓库
- 仓库名：`outworld-station-guide`
- GitHub Pages：gh-pages 分支部署

### 域名（后期）
- 购入后改 baseURL
- DNS CNAME 配置
- GitHub Pages custom domain

---

## 📋 三员工任务分配

### 员工A - 情报分析（当前阶段）
- [ ] 详细调研 Outworld Station 游戏机制
- [ ] 搜索英文社区（Reddit/Steam论坛）了解玩家关注点
- [ ] 分析竞品 YouTube 攻略的覆盖盲区
- [ ] 确定内容优先级（哪些内容做攻略价值最高）
- [ ] 输出：**选品详情报告**

### 员工B - 内容架构（员工A完成后启动）
- [ ] 设计完整 Wiki 目录结构
- [ ] 每页内容大纲（Section 级）
- [ ] 关键词策略（SEO 关键词列表）
- [ ] 输出：**内容架构文档**

### 员工C - 文案+前端（持续）
- [ ] 创建 Hugo 站点骨架
- [ ] 设计主题（适配太空/自动化风格）
- [ ] 按员工B大纲逐步生成内容
- [ ] SEO 优化（meta/alt/hreflang/sitemap）
- [ ] 广告位预留

---

## ⚙️ 更新流程（参考 Gambonanza）
```
hugo --minify
git add .
git commit -m "update: 改了什么内容"
git push origin main
# GitHub Actions 自动部署到 gh-pages
```
