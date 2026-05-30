# Feynman Learning Skills

AI skills for learning concepts and languages with the Feynman technique, then turning the learning session into durable notes.

This repository is designed as a shared skill source for Codex and Cursor. The canonical skill lives at:

```text
skills/feynman-learning/
```

## What It Does

- Tests whether you can explain a concept in plain language.
- Finds one understanding gap at a time instead of dumping a lecture.
- Gives minimal scaffolding when you are stuck.
- Supports language learning with examples, contrast pairs, pronunciation notes, and usage boundaries.
- Produces Obsidian-friendly Markdown notes after the learning loop.

## Install

Install into Codex:

```bash
./scripts/install.sh codex
```

Install into Cursor:

```bash
./scripts/install.sh cursor
```

Install both:

```bash
./scripts/install.sh all
```

## Usage Examples

```text
Use feynman-learning to learn "transformer attention" and generate an Obsidian note.
```

```text
Use feynman-learning language mode for the Japanese particles は and が.
```

```text
feynman-note: turn my explanation of Bayesian updating into a permanent note.
```

## Prior Art

This project is inspired by public Feynman-technique skill repositories and by the workflow/agent separation used in academic research skill suites. It is not a copy of those projects. The focus here is Chinese-first learning workflows, language learning, and note generation.

