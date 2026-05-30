# Feynman Learning Skills for Codex and Cursor

[![Version](https://img.shields.io/badge/version-v0.1.0-blue)](https://github.com/WangPu1999/feynman-learning-skills)
[![License: MIT](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![Skills](https://img.shields.io/badge/skills-Codex%20%7C%20Cursor-purple)](skills/feynman-learning)

[简体中文](README.zh-CN.md) | [English](README.en.md)

A curiosity-first learning skill for concepts, research papers, technical ideas,
and IELTS/TOEFL English. It uses the Feynman loop to turn recognition into
reconstruction: simplify, teach back, repair one gap, then connect the idea to
your field, boundaries, or research questions.

## Flow

![Feynman Learning Loop](assets/feynman-learning-loop.png)

![Disruptive Paper Reading](assets/disruptive-paper-reading.png)

## Install

```bash
git clone https://github.com/WangPu1999/feynman-learning-skills.git
cd feynman-learning-skills
./scripts/install.sh all
```

## Modes

| Mode | Purpose |
|---|---|
| Feynman loop | General concept learning through teach-back and one-gap repair. |
| Boundary | Math/technical learning through limits, assumptions, parent forms, and special cases. |
| Disruptive | Paper and pipeline learning through baseline, design logic, modification, risk, and experiment. |
| IELTS/TOEFL English | Paraphrase, coherence, argument, academic register, and clear expression. |
| Note | Obsidian-ready summary of the useful learning result. |

## Examples

```text
Use feynman-learning to understand Minkowski distance through boundaries and special cases.
```

```text
Use feynman-learning disruptive mode to study C-JEPA: baseline, design choices, what I would change, and what experiment would test it.
```

```text
Use feynman-learning for IELTS writing: help me paraphrase this idea without changing the meaning.
```

## Structure

```text
.
├── assets/
├── scripts/
│   └── install.sh
└── skills/
    └── feynman-learning/
        ├── SKILL.md
        ├── commands/
        └── references/
```

## Prior Art

Inspired by Feynman-technique skills, academic research skill routing patterns,
and Chinese learning content on the Feynman mental model. This project focuses
on curiosity-first understanding, research learning, English ability, and
Obsidian notes.

## License

MIT
