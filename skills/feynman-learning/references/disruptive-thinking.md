# Disruptive Thinking for Research Learning

This reference captures the user's personal research-learning heuristic:
understanding becomes deeper when the learner deliberately disrupts each part of
a concept, method, argument, or system and asks what would change.

Use this after the learner can give a basic explanation. It is not the first
step; it is the transfer and innovation step.

## Core Idea

A learner has not really mastered a concept if they only know the standard path.
Research-level understanding begins when they can perturb the path:

```text
What if this assumption changes?
What if this variable is removed?
What if this mechanism is reversed?
What if this boundary condition fails?
What if the same method is moved to another domain?
What if the weakest link becomes the design center?
```

This is useful for scientific learning because research is often not about
reciting the known structure. It is about seeing which part of the structure can
be changed, broken, generalized, or recombined.

## When to Use

Use disruptive thinking when the user wants to:

- understand a research paper, theory, model, or method
- understand a pipeline, architecture, workflow, or experimental procedure
- find research questions
- generate hypotheses
- critique assumptions
- learn a method beyond cookbook usage
- turn a concept into an experiment idea
- move from comprehension to innovation

Do not use it before the learner can explain the basic concept. First stabilize
the core explanation, then perturb it.

## Curiosity and Domain Anchoring

Before perturbing a paper, method, or workflow, ask the learner what they are
curious about and what domain they know well. Learning is faster when new
structures are connected to the learner's existing interests and field.

Ask:

```text
你最想弄懂这篇论文/这个流程的哪一部分？
你自己的领域或熟悉场景是什么？
我们能不能把这个机制类比到你的领域里？
```

Use the answers to choose examples, analogies, and perturbations. Do not force
generic examples when a learner-specific domain is available.

## Paper and Pipeline Disruption Protocol

Use this protocol for papers, model architectures, experimental pipelines, and
processes.

### 1. Locate the Baseline

Ask what the baseline or default solution is before the new design.

Prompt:

```text
它的 baseline 是什么？如果不使用这个新设计，最朴素或常见的做法是什么？
```

For a paper like C-JEPA, this means identifying the reference point: what design,
objective, architecture, dataset setup, or evaluation path is the paper trying to
improve over?

### 2. Reconstruct the Author's Design Logic

Ask why each part exists.

Prompt:

```text
作者为什么要这样设计？这个环节解决了 baseline 的什么问题？
```

Do not treat design choices as natural. Force them to justify themselves:

- Why this representation?
- Why this objective?
- Why this loss or metric?
- Why this data path?
- Why this comparison?
- Why this abstraction level?

### 3. Ask "If It Were Me"

Invite the learner to propose a modification before reading the author's final
answer or before accepting it as inevitable.

Prompt:

```text
如果是你，你会怎么改这个环节？你会保留什么，替换什么，为什么？
```

This converts reading into design participation. The learner is no longer only
tracking the paper; they are rehearsing research judgment.

### 4. Perturb Every Important Step

For each key step in the pipeline, ask:

```text
这个环节能不能换？
换成什么？
改变后收益是什么？
代价是什么？
哪里会坏？
需要什么实验验证？
```

Use a table:

```markdown
| Step | Current Design | Why It Exists | My Change | Expected Gain | Failure Risk | Test |
|---|---|---|---|---|---|---|
```

### 5. Identify Defects and Blind Spots

Ask what the design still fails to solve.

Prompt:

```text
这个设计最脆弱的地方是什么？它在哪些数据、场景、假设或评价指标下可能失效？
```

Convert each defect into either:

- a better explanation of the paper's boundary
- an experiment idea
- a research question
- a note for future reading

## Perturbation Lenses

Ask one lens at a time.

### 1. Assumption Change

What assumption is this concept or method relying on? What happens if it is
weakened, removed, or reversed?

Prompt:

```text
这个解释依赖哪个前提？如果这个前提不成立，结论会怎么变？
```

### 2. Component Removal

What part seems necessary? What happens if it is removed?

Prompt:

```text
如果去掉这个环节，系统还成立吗？哪里会最先坏掉？
```

### 3. Mechanism Reversal

Can the causal direction, order, or feedback loop be reversed?

Prompt:

```text
如果因果方向反过来，或者流程顺序反过来，会产生什么新问题？
```

### 4. Boundary Stress

Where does the idea stop working?

Prompt:

```text
这个概念在哪些边界条件下会失效？极端情况是什么？
```

### 5. Variable Sensitivity

Which variable matters most? Which variable is ignored?

Prompt:

```text
如果只改变一个变量，哪个变量最可能改变结果？为什么？
```

### 6. Domain Transfer

Can the structure move into another field?

Prompt:

```text
如果把这个方法搬到另一个领域，哪些部分保留，哪些部分必须重写？
```

### 7. Weak-Link Inversion

What is usually treated as a limitation? Could it become the center of a new
design?

Prompt:

```text
这个方法最大的限制是什么？如果把这个限制当成创新入口，会得到什么问题？
```

## Output Pattern

When using disruptive thinking, produce a compact table:

```markdown
| Perturbation | What Changes | What Breaks | New Question |
|---|---|---|---|
| Assumption change | ... | ... | ... |
```

Then ask the learner to choose one perturbation and explain it back.

For paper or pipeline learning, prefer this richer table:

```markdown
| Step | Baseline | Current Design | Why This Design | If I Changed It | Risk | Experiment |
|---|---|---|---|---|---|---|
```

## Integration with Feynman Loop

Default sequence:

```text
simplify -> teach-back -> repair gap -> creative repetition
-> curiosity/domain anchor -> baseline/design logic -> disruptive perturbation
-> transfer question -> note
```

For research learning, the note should include:

- the original concept
- the learner's curiosity or domain anchor
- the baseline
- why the design exists
- the key assumptions
- what changes under perturbation
- what breaks first
- the learner's proposed modification
- one possible research question or hypothesis
