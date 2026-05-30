# Feynman Learning Skills

Feynman Learning Skills is a shared skill repository for Codex and Cursor. It helps learners understand concepts, language points, theories, methods, and domain vocabulary through the Feynman technique, then turns the learning session into Obsidian-friendly Markdown notes.

The canonical skill lives at:

```text
skills/feynman-learning/
```

## Goals

- Help the learner explain a concept in plain language.
- Diagnose one understanding gap at a time.
- Use Socratic questions before giving explanations.
- Provide minimal scaffolding only when the learner is stuck.
- Use return-to-source review only to repair a specific gap, then require a new explanation.
- Use creative repetition to build transfer across examples, analogies, contrasts, and contexts.
- Support language learning with natural usage, examples, contrast pairs, and common mistakes.
- Generate durable Obsidian notes after the learning loop.

## Install

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

## Usage

Concept learning:

```text
Use feynman-learning to learn transformer attention and generate an Obsidian note.
```

Language learning:

```text
Use feynman-learning language mode for the Japanese particles は and が.
```

Note generation:

```text
feynman-note: turn my explanation of Bayesian updating into a permanent note.
```

## Modes

| Mode | Purpose |
|---|---|
| `teach-back` | The learner explains first; the agent diagnoses one gap per turn. |
| `primer` | Gives a short beginner ramp when the learner cannot start. |
| `language` | Helps learn vocabulary, grammar, usage, register, and contrast pairs. |
| `exam` | Generates transfer questions, counterexamples, and drills. |
| `note` | Produces Obsidian-ready Markdown notes. |

## Repository Structure

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

## Prior Art

This project is inspired by public Feynman-technique skill repositories, by the workflow/agent separation used in academic research skill suites, and by Chinese learning content on the Feynman mental model such as [费曼的学习心智模型](https://www.bilibili.com/video/BV1bBCcBtEnA/). It is not a direct copy. This repository focuses on Chinese-first learning workflows, language learning, and Obsidian note generation.

## License

MIT
