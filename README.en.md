# Feynman Learning Skills

Feynman Learning Skills is a shared skill repository for Codex and Cursor. It
helps master's students understand concepts, research papers, technical ideas,
IELTS/TOEFL English, and job/internship interview questions through
curiosity-first Feynman learning.

It is designed to cover four common graduate-student needs: learning and exams,
English ability, research development, and career preparation.

## Learning Philosophy

Real learning is not "I recognize this answer." It is "I can rebuild it, explain
it, stress its boundary, and use it in a new situation." This skill asks the
learner to simplify, teach back, repair one gap, then connect the idea to
curiosity, familiar fields, boundaries, research questions, or interview stories.

## Flow

<table>
  <tr>
    <td width="50%"><img src="assets/feynman-learning-loop.png" alt="Feynman Learning Loop"></td>
    <td width="50%"><img src="assets/disruptive-paper-reading.png" alt="Disruptive Paper Reading"></td>
  </tr>
</table>

## Install

```bash
git clone https://github.com/WangPu1999/feynman-learning-skills.git
cd feynman-learning-skills
./scripts/install.sh all
```

Preview install targets without changing files:

```bash
./scripts/install.sh --dry-run all
```

## Modes

| Mode | Purpose |
|---|---|
| Feynman loop | General concept learning through teach-back and one-gap repair. |
| Boundary | Math/technical learning through limits, assumptions, parent forms, and special cases. |
| Disruptive | Paper and pipeline learning through baseline, design logic, modification, risk, and experiment. |
| Research growth | Graduate research training: stage, ability target, project loop, experiments, writing, and meetings. |
| IELTS/TOEFL English | Paraphrase, coherence, argument, academic register, and clear expression. |
| Interview prep | Graduate job and internship prep: research stories, projects, fundamentals, role fit, tradeoffs, and follow-ups. |
| Note | Obsidian-ready summary of the useful learning result. |

## Examples

```text
Help me understand Minkowski distance through boundaries and special cases.
```

```text
I want to study C-JEPA: baseline, design choices, what I would change, and what experiment would test it.
```

```text
I just joined a lab and want to know how to train my research ability next.
```

```text
For IELTS writing, help me paraphrase this idea without changing the meaning.
```

```text
Help me prepare for an internship interview: explain my project, tradeoffs, and likely follow-up questions.
```

## Other Tools

For Claude Code, Trae, or similar agent tools, clone this repository and ask the
tool to read `skills/feynman-learning/SKILL.md`. The workflow is plain Markdown,
so other tools can use it by reading the skill and its `references/` files.

## Structure

```text
skills/feynman-learning/
├── SKILL.md
├── commands/
└── references/
```

## Prior Art

Inspired by Feynman-technique skills, academic research skill routing patterns,
Chinese learning content on the Feynman mental model, and public research
training notes by [pengsida](https://github.com/pengsida), especially
[pengsida/learning_research](https://github.com/pengsida/learning_research).
This project focuses on curiosity-first understanding for master's students:
learning, research, English ability, interview preparation, and Obsidian notes.

[`pengsida/learning_research`](https://github.com/pengsida/learning_research)
is referenced as an external source of research training ideas. Its content is
not vendored into this repository because the upstream repository does not
currently include an explicit license file.

## License

MIT
