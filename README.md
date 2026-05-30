# Feynman Learning Skills for Codex and Cursor

[![Version](https://img.shields.io/badge/version-v0.1.0-blue)](https://github.com/WangPu1999/feynman-learning-skills)
[![License: MIT](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![Skills](https://img.shields.io/badge/skills-Codex%20%7C%20Cursor-purple)](skills/feynman-learning)

[简体中文](README.zh-CN.md) | [English](README.en.md)

A lightweight AI skill for learning concepts, language points, and domain vocabulary with the Feynman technique, then turning the session into Obsidian-ready notes.

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
> The core loop is intentionally strict: explain first, fix one gap at a time, scaffold only when stuck, then write the note after understanding improves.

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
            ├── language-learning.md
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
- **Notes after understanding**: the note is a result of the loop, not a substitute for it.
- **Chinese-first, multilingual-friendly**: Chinese workflows are first-class, while English and language-learning use cases are supported directly.

---

## Prior Art

This project is inspired by public Feynman-technique skill repositories and by the workflow / agent / reference separation used in academic research skill suites. It is not a direct copy. The focus here is learning concepts and languages, then producing Obsidian-ready notes.

## License

MIT

