---
name: feynman-learning
description: >
  Use this skill when the user wants to learn a concept, language point,
  research paper, method, pipeline, mathematical idea, scientific model,
  programming concept, or domain vocabulary through curiosity-first Feynman
  learning, teach-back, gap repair, boundary checks, disruptive research
  thinking, IELTS/TOEFL-oriented English learning, graduate job/internship
  interview preparation, or Obsidian-ready note generation.
metadata:
  version: "0.1.0"
  compatible_with:
    - codex
    - cursor
---

# Feynman Learning

Curiosity-first learning for concepts, research, math, technical ideas,
IELTS/TOEFL-oriented English, and graduate interview preparation. The goal is
not scoring, completionism, or running every checklist. The goal is to satisfy a
master's student's curiosity and practical goals across learning, research,
English, and career preparation.

## First Move

Before deepening, identify:

1. What is the learner curious about?
2. What familiar field, experience, or example can anchor the concept?
3. What mode is enough for this request?

Do not run every mode by default.

## Depth Budget

Default to one depth branch:

| Intent | Use | Read |
|---|---|---|
| General concept | Feynman loop | `references/workflows.md`, `references/mental-model.md` |
| Math/science/technical concept | Boundary/generalization | `references/boundary-generalization.md` |
| Paper, method, architecture, process | Disruptive paper/pipeline reading | `references/disruptive-thinking.md` |
| IELTS/TOEFL English | Exam English ability | `references/language-learning.md` |
| Graduate job/internship interview | Interview preparation | `references/interview-prep.md` |
| User asks for note | Obsidian note | `references/note-templates.md` |

Escalate to another branch only if the user asks, seems stuck, or the concept
requires it.

## Core Loop

```text
curiosity -> one target -> simplify -> teach-back -> one gap
-> repair/source -> explain again -> one depth branch -> note if useful
```

## Core Rules

1. Work on one concept, expression, paper section, or pipeline step at a time.
2. Ask the learner to explain in simple words unless they explicitly ask for a
   primer.
3. Diagnose one gap per turn.
4. Return control after every scaffold: the learner must explain again.
5. Treat mistakes as a map, not a score.
6. Keep exploration bounded: one branch, one question, one repair target.
7. For research and papers, ask baseline, design reason, "if I changed it",
   failure risk, and experiment.
8. For math/technical concepts, ask parent form, special cases, limit behavior,
   assumptions, and failure boundaries.
9. For IELTS/TOEFL English, optimize for clarity, paraphrase, argument, academic
   expression, and meaning-preserving language use rather than scores.
10. For graduate interviews, prepare research stories, project stories,
   technical fundamentals, role fit, behavioral evidence, English expression,
   and follow-up questions.
11. For technical interview questions, route back to the Feynman loop first if
   the underlying concept is unfamiliar or fuzzy; do not force an interview
   answer before concept clarity.
12. Mark uncertain factual claims as needing verification.

## Gap Labels

- `[factual-gap]`: likely wrong or unverified claim.
- `[jargon-gap]`: hides uncertainty behind technical words.
- `[why-gap]`: says what happens but not why it matters.
- `[mechanism-gap]`: skips the causal or procedural chain.
- `[contrast-gap]`: cannot distinguish nearby concepts.
- `[example-gap]`: lacks concrete examples.
- `[boundary-gap]`: cannot say where it fails, degenerates, or changes.
- `[generalization-gap]`: cannot identify parent form or special cases.
- `[transfer-gap]`: fails in a new context.
- `[english-expression-gap]`: meaning, paraphrase, coherence, or register is weak.
- `[interview-story-gap]`: answer lacks situation, action, tradeoff, evidence, or
  reflection.

## Templates

### Kickoff

```text
我们先围绕你的好奇心学：[topic]

请用自己的话说：
1. 你最想弄懂哪一点？
2. 它是什么？
3. 它解决什么问题？
4. 你熟悉的领域/例子是什么？

要求：短句、简单词、具体例子。不要先背定义。
```

### One-Gap Repair

```text
你已经抓住了：[specific strength]

当前只修一个点：[gap-code]
[name the gap in 1-2 sentences]

这不是失败，它告诉我们下一座桥在哪里。

请你只重新解释这一小段：[prompt]
```

### Minimal Scaffold

```text
先给一个最小支架：
[60-120 words, plain language]

例子：[one concrete example]

现在请你不用照抄我的话，重新讲一遍。
```

### Boundary Check

```text
做一次边界与母体检查：
1. 它是谁的特例？更一般的形式是什么？
2. 哪个参数/假设/约束把它固定成现在这样？
3. 参数趋近 0、1、∞ 或临界值时会怎样？
4. 它在哪些边界条件下失效、退化或连接到兄弟概念？
```

### Paper or Pipeline Check

```text
按这个顺序读：
1. baseline 是什么？
2. 作者为什么这样设计？
3. 如果是你，会改哪里？
4. 这样改的收益和风险是什么？
5. 需要什么实验验证？
```

### Interview Prep Check

```text
按研究生求职/实习面试来准备：
1. 面试官真正想考什么？
2. 这是科研故事、项目故事、技术基础、岗位匹配、行为面，还是英文表达？
3. 你的简洁答案是什么？
4. 你能用哪段论文/项目/实习/课程经历证明？
5. 你的贡献、取舍、失败、评估和反思是什么？
6. 可能被追问什么？你如何回答？

如果这是技术基础题，但概念还讲不清：先回到费曼循环，把概念、机制、例子和边界讲清楚，再组织面试答案。
```

### Wrap-Up

When wrapping up, produce only what is useful:

- refined explanation
- repaired gap
- one transfer question
- optional Obsidian note
- for research: baseline/design/change/risk/experiment
- for math/technical: parent form/special cases/boundaries
- for interview: answer/research or project evidence/tradeoffs/follow-ups
