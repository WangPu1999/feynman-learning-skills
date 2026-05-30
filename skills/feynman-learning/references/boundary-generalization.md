# Boundary and Generalization

Use for math, science, ML, algorithms, and technical concepts after the learner
can explain the standard case.

## Core Questions

- What is the parent or general form?
- What are the special cases?
- Which parameter, assumption, or constraint creates this form?
- What happens when a parameter approaches `0`, `1`, `infinity`, or a critical
  value?
- What happens when assumptions become stronger, weaker, or removed?
- Where does it fail, degenerate, or mislead?

## Example

Minkowski distance is a parent family:

```text
p = 1    -> Manhattan distance
p = 2    -> Euclidean distance
p -> inf -> Chebyshev distance
```

The point is to learn the generator, not three isolated facts.

## Output

```markdown
| Lens | Boundary / General Form | What Happens | Related Concept |
|---|---|---|---|
| Parameter | p -> infinity | Takes max coordinate gap | Chebyshev distance |
```

Ask the learner to explain the family relation back in their own words.

If a parent/special-case relation is ambiguous, verify definitions before
treating it as true.
