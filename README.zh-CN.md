# 费曼学习法 Skills

这是一个面向 Codex 和 Cursor 的学习型 skills 仓库。它用于学习概念、语言点、理论、方法和领域词汇：先通过费曼学习法暴露理解漏洞，再用最小支架补齐，最后生成适合 Obsidian 沉淀的 Markdown 笔记。

## 学习理念

真正有效的学习，不是你看到解释时觉得“我懂了”，而是你的大脑在不看原文的情况下，能够重新搭建这个概念。这个过程需要提取、简化、犯错、修补和迁移。当你用简单语言解释一个概念时，大脑被迫判断什么最重要，暴露推理链条在哪里断裂，并把知识连接到你真的能使用的例子上。费曼学习法之所以有效，是因为它把学习从“认得出来”变成“重新生成”：你不是只阅读知识，而是在测试自己能不能讲出来、换种方式讲、教给别人，并用到新的场景里。

核心 skill 位于：

```text
skills/feynman-learning/
```

## 目标

- 让学习者先用自己的话解释概念，而不是直接接收答案。
- 每轮只诊断一个理解漏洞，避免一次性抛出过多反馈。
- 优先用苏格拉底式追问，而不是直接讲解。
- 只有在学习者卡住时，才给最小必要解释和例子。
- 回到原始材料只是为了修补具体漏洞，修补后必须重新解释。
- 用类比、例子、对比、故事和新语境做创造性重复，建立迁移能力。
- 支持语言学习：自然用法、例句、近义表达对比、语域、常见错误。
- 在学习结束后生成 Obsidian 友好的永久笔记。

## 安装

安装到 Codex：

```bash
./scripts/install.sh codex
```

安装到 Cursor：

```bash
./scripts/install.sh cursor
```

同时安装到 Codex 和 Cursor：

```bash
./scripts/install.sh all
```

## 使用示例

学习概念：

```text
用 feynman-learning 帮我学习 transformer attention，并生成 Obsidian 笔记。
```

学习语言：

```text
用 feynman-learning 的 language mode 帮我学习日语的 は 和 が。
```

生成笔记：

```text
feynman-note: 把我对贝叶斯更新的解释整理成永久笔记。
```

## 模式

| 模式 | 用途 |
|---|---|
| `teach-back` | 学习者先解释，AI 每轮指出一个最关键漏洞。 |
| `primer` | 学习者完全开不了口时，先给一个很短的入门支架。 |
| `language` | 学习词汇、语法、表达、语域、近义表达和自然用法。 |
| `exam` | 生成迁移题、反例题和练习题。 |
| `note` | 生成 Obsidian 可直接使用的 Markdown 笔记。 |

## 仓库结构

```text
.
├── scripts/
│   └── install.sh
└── skills/
    └── feynman-learning/
        ├── SKILL.md
        ├── agents/
        ├── commands/
        └── references/
```

## 设计来源

这个项目借鉴了公开的 Feynman technique skill 项目、academic research skills 中的 workflow / agent / reference 分层设计，以及中文费曼学习内容，例如 [费曼的学习心智模型](https://www.bilibili.com/video/BV1bBCcBtEnA/)。但本仓库不是直接复制，重点是中文优先、概念学习、语言学习，以及 Obsidian 笔记沉淀。

## 许可证

MIT
