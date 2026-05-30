# Feynman Learning Skills for Codex and Cursor

[![Version](https://img.shields.io/badge/version-v0.1.0-blue)](https://github.com/WangPu1999/feynman-learning-skills)
[![License: MIT](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![Skills](https://img.shields.io/badge/skills-Codex%20%7C%20Cursor-purple)](skills/feynman-learning)

[简体中文](README.zh-CN.md) | [English](README.en.md)

A lightweight AI skill for learning concepts, language points, and domain vocabulary with the Feynman technique, then turning the session into Obsidian-ready notes.

## Learning Philosophy

Real learning is not the moment when an explanation sounds familiar. It is the moment when your brain can rebuild the idea without looking at the source. That requires retrieval, simplification, error, repair, transfer, and disruption. When you explain a concept in plain language, you force your mind to choose what matters, expose where the chain breaks, and connect the idea to examples you can actually use. The Feynman technique works because it turns learning from recognition into reconstruction. The research layer goes one step further: once you understand the standard version, you deliberately change an assumption, remove a component, reverse a mechanism, or move the idea into another domain. For papers and workflows, this means asking: what is the baseline, why did the authors design it this way, what would I change, what would break, and what experiment would prove it? That is where learning starts becoming hypothesis generation.

**Install in 30 seconds**:

```bash
git clone https://github.com/WangPu1999/feynman-learning-skills.git
cd feynman-learning-skills
./scripts/install.sh all
```

Then try:

```text
Use feynman-learning to learn transformer attention and generate an Obsidian note.
```

> **AI is your learning coach, not your substitute memory.** This skill is designed to make you explain, notice gaps, repair them, and produce a durable note. It does not try to replace the learner with a summary machine.
>
> The core loop is intentionally strict: choose one concept, simplify it, teach it back, fix one gap, return to source or scaffold, repeat creatively, perturb the structure when useful, then write the note after understanding improves.

---

## Flow at a Glance

![Feynman Learning Loop](assets/feynman-learning-loop.png)

![Disruptive Paper Reading](assets/disruptive-paper-reading.png)

---

## Why This Exists

Most AI learning chats become polished explanations too quickly. They feel helpful, but the learner can still fail to explain the idea without the model.

This skill optimizes for active recall and teach-back:

- You explain the concept in your own words.
- The agent identifies the most important gap.
- You repair that gap through a focused question or small scaffold.
- The agent tests transfer with examples, contrasts, or edge cases.
- The final output becomes an Obsidian note you can review later.

It is especially useful for:

- concept learning
- language learning
- paper or book note refinement
- programming concepts
- technical vocabulary
- turning messy learning sessions into permanent notes

---

## Architecture

The canonical skill lives at:

```text
skills/feynman-learning/
```

Repository layout:

```text
.
├── scripts/
│   └── install.sh
└── skills/
    └── feynman-learning/
        ├── SKILL.md
        ├── agents/
        │   └── openai.yaml
        ├── commands/
        │   ├── feynman-language.md
        │   ├── feynman-learn.md
        │   └── feynman-note.md
        └── references/
            ├── disruptive-thinking.md
            ├── language-learning.md
            ├── mental-model.md
            ├── note-templates.md
            └── workflows.md
```

`SKILL.md` is the router. Detailed workflow behavior is progressively loaded from `references/` only when needed.

---

## Quick Install

Install into Codex:

```bash
./scripts/install.sh codex
```

Install into Cursor:

```bash
./scripts/install.sh cursor
```

Install into both:

```bash
./scripts/install.sh all
```

The installer copies `skills/feynman-learning/` into:

```text
~/.codex/skills/feynman-learning
~/.cursor/skills/feynman-learning
```

---

## Features at a Glance

- **Teach-back learning** — the learner explains first; the agent diagnoses one gap per turn.
- **Socratic repair** — the agent asks targeted questions before giving explanations.
- **Minimal scaffold** — short explanation plus one example only when the learner is stuck.
- **Return-to-source loop** — review is used to repair a specific gap, then the learner explains again.
- **Creative repetition** — the same idea is repeated through analogy, example, contrast, story, diagram-like description, or a new context.
- **Error-as-map framing** — mistakes become precise repair targets instead of failure signals.
- **Disruptive research thinking** — once the standard explanation is stable, change an assumption, remove a component, reverse a mechanism, stress a boundary, or transfer domains to generate deeper questions.
- **Paper / pipeline reading protocol** — identify the baseline, reconstruct the author's design logic, propose your own modification, then test the likely failure mode.
- **Curiosity and domain anchoring** — connect the new concept to the learner's interests, research field, or familiar domain before generating examples.
- **Language learning mode** — vocabulary, grammar, register, collocations, contrast pairs, and natural example sentences.
- **Exam mode** — transfer questions, counterexamples, and edge-case checks.
- **Obsidian note generation** — concept notes and language notes with aliases, tags, examples, mistakes, and review questions.
- **Codex / Cursor compatibility** — one canonical skill directory, installed into either environment.

---

## Usage

### Concept Learning

```text
Use feynman-learning to help me understand Bayesian updating.
```

```text
Use feynman-learning to learn transformer attention and generate an Obsidian note.
```

### Paper and Pipeline Learning

```text
Use feynman-learning disruptive mode to study C-JEPA. Help me identify the baseline, why each design choice exists, what I would change, and what experiments would test the change.
```

### Language Learning

```text
Use feynman-learning language mode for the Japanese particles は and が.
```

```text
用 feynman-learning 帮我区分 affect 和 effect，并生成语言笔记。
```

### Note Generation

```text
feynman-note: turn my explanation of gradient descent into a permanent note.
```

```text
feynman-note: 把我刚才对贝叶斯更新的解释整理成 Obsidian 笔记。
```

---

## Modes

| Mode | Purpose |
|---|---|
| `teach-back` | The default loop: explain, diagnose one gap, repair, test. |
| `primer` | A short beginner ramp when the learner cannot start. |
| `language` | Vocabulary, grammar, usage, register, collocations, and contrast pairs. |
| `exam` | Transfer questions, counterexamples, and drills. |
| `disruptive` | Research and paper learning through baseline comparison, design critique, assumption changes, mechanism reversals, boundary stress, and domain transfer. |
| `note` | Obsidian-ready Markdown note generation. |

---

## Output Examples

### Concept Note

```markdown
---
aliases:
  - Bayesian updating
tags:
  - learning/feynman
  - concept
status: seedling
---

# Bayesian Updating

## One-Sentence Version

Bayesian updating means changing your belief after seeing new evidence.

## Review Questions

1. What was the prior belief?
2. What new evidence arrived?
3. Why did the belief move more or less strongly?
```

### Language Note

```markdown
# は vs が

## Core Contrast

は marks the topic of what we are talking about. が often marks the subject that is newly identified, emphasized, or contrasted.

## Common Mistake

- Do not translate both as simply "is"; they organize information differently.
```

---

## Design Principles

- **Active recall over passive reading**: the learner must produce an explanation.
- **One gap at a time**: feedback stays focused enough to act on.
- **Scaffold, then return control**: explanations are short and immediately followed by teach-back.
- **Review must produce output**: returning to source is only useful when followed by a new explanation.
- **Variation builds transfer**: repeat the concept in new forms until it works outside the original example.
- **Disruption reveals structure**: change one part of the concept to see what breaks, what survives, and what new question appears.
- **Notes after understanding**: the note is a result of the loop, not a substitute for it.
- **Chinese-first, multilingual-friendly**: Chinese workflows are first-class, while English and language-learning use cases are supported directly.

---

## Prior Art

This project is inspired by public Feynman-technique skill repositories, by the workflow / agent / reference separation used in academic research skill suites, and by Chinese learning content on the Feynman mental model such as [费曼的学习心智模型](https://www.bilibili.com/video/BV1bBCcBtEnA/). It is not a direct copy. The focus here is learning concepts and languages, then producing Obsidian-ready notes.

## License

MIT
