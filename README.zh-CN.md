# 费曼学习法 Skills

这是一个面向 Codex 和 Cursor 的学习型 skills 仓库。它帮助学习者围绕自己的好奇心学习概念、论文、技术方法、IELTS/TOEFL 英语能力，以及求职/实习面试问题，并把结果整理成 Obsidian 笔记。

## 学习理念

真正的学习不是“我认得这个答案”，而是“我能重新生成、讲清楚、推到边界，并用到新场景”。这个 skill 会引导学习者先简化、讲出来、修补一个漏洞，再把概念连接到自己的兴趣、熟悉领域、边界条件、研究问题或面试故事。

## 流程图

<table>
  <tr>
    <td width="50%"><img src="assets/feynman-learning-loop.png" alt="Feynman Learning Loop"></td>
    <td width="50%"><img src="assets/disruptive-paper-reading.png" alt="Disruptive Paper Reading"></td>
  </tr>
</table>

## 安装

```bash
git clone https://github.com/WangPu1999/feynman-learning-skills.git
cd feynman-learning-skills
./scripts/install.sh all
```

## 模式

| 模式 | 用途 |
|---|---|
| 费曼循环 | 普通概念学习：讲出来、找一个漏洞、修补、再解释。 |
| 边界/母体 | 数学和技术概念：极限、假设、特例、母体、兄弟概念。 |
| 破坏式阅读 | 论文和流程学习：baseline、设计理由、如果是我、风险、实验。 |
| IELTS/TOEFL 英语 | 改写、连贯、论证、学术表达和清晰表达。 |
| 面试准备 | 求职和实习面试：概念讲清楚、项目故事、取舍、追问。 |
| 笔记 | 生成精简 Obsidian 学习笔记。 |

## 示例

```text
用 feynman-learning 帮我通过边界和特例理解 Minkowski 距离。
```

```text
用 feynman-learning disruptive mode 学 C-JEPA：baseline、设计选择、如果是我怎么改、怎么实验验证。
```

```text
用 feynman-learning 练 IELTS 写作：帮我在不改变意思的情况下改写这个观点。
```

```text
用 feynman-learning 准备实习面试：帮我讲清楚项目、技术取舍和可能追问。
```

## 结构

```text
skills/feynman-learning/
├── SKILL.md
├── commands/
└── references/
```

## 设计来源

项目借鉴了费曼学习法、academic research skills 的路由结构，以及中文费曼学习内容。重点是好奇心优先、科研学习、英语能力、面试准备和 Obsidian 笔记。

## 许可证

MIT
