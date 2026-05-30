# Boundary and Generalization Thinking

This reference captures a learning heuristic for mathematics, science,
research, and technical concepts: a concept is understood more deeply when the
learner knows its boundary, limit behavior, special cases, and parent structure.

Use this for new concepts after the learner can give a basic explanation.

## Core Idea

Do not only ask:

```text
What is this concept?
```

Also ask:

```text
Where does it stop working?
What happens at the limit?
Which more general structure contains it?
Which sibling concepts appear when the parameter, assumption, or constraint changes?
```

This turns isolated facts into a concept family.

## Boundary and Limit Check

Ask one boundary lens at a time.

### 1. Parameter Boundary

What happens when a parameter approaches `0`, `1`, `infinity`, a critical value,
or an invalid value?

Prompt:

```text
如果参数趋近 0、1、∞ 或某个临界值，这个概念会变成什么？
```

### 2. Assumption Boundary

What happens if an assumption becomes stronger, weaker, or removed?

Prompt:

```text
如果这个假设变强、变弱，或者被移除，结论还成立吗？
```

### 3. Scale Boundary

What happens when dimension, sample size, time, data size, or system scale
changes dramatically?

Prompt:

```text
当维度、样本量、时间或规模变得很大/很小时，行为会变吗？
```

### 4. Input Boundary

What happens with empty, repeated, noisy, adversarial, shifted, or extreme
inputs?

Prompt:

```text
如果输入为空、重复、异常、噪声很大或分布偏移，会怎样？
```

### 5. Applicability Boundary

Where is this concept useful, and where would it mislead?

Prompt:

```text
这个概念在哪些场景有效？在哪些场景会误导？
```

### 6. Degenerate Case

Does the concept collapse into a simpler concept under some condition?

Prompt:

```text
在什么条件下，它会退化成一个更简单的概念？
```

### 7. Parent Structure and Special Cases

Is the concept a special case of a more general model, theorem, formula, family,
or algorithm?

Prompt:

```text
它是谁的特例？哪个参数、假设或约束把它固定成现在这个形式？
```

## Examples

Minkowski distance is a parent structure:

```text
p = 1    -> Manhattan distance
p = 2    -> Euclidean distance
p -> inf -> Chebyshev distance
```

The learning point is not to memorize three distances separately. The learner
should see the generator: one family, one parameter, several special cases, and
different geometric meanings.

When a claimed parent/special-case relation is ambiguous, verify the exact
definition before treating it as true. For example, "Lagrange expansion" can
mean different things in different contexts.

## Output Pattern

For concept learning, use this compact table:

```markdown
| Lens | Boundary / General Form | What Happens | Related Concept |
|---|---|---|---|
| Parameter | p -> infinity | ... | Chebyshev distance |
```

Then ask the learner to explain the family relationship in their own words.

## Integration with Feynman Loop

Default sequence:

```text
simplify -> teach-back -> repair gap -> parent structure
-> boundary / limit check -> special cases -> transfer question -> note
```

For math, science, ML, algorithms, and research concepts, the final note should
include:

- parent/general form
- special cases
- boundary or limit behavior
- assumptions that make the concept valid
- where it fails or misleads

