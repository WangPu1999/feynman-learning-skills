# Disruptive Research Learning

Use for papers, methods, architectures, workflows, and research ideas after the
learner can explain the standard version.

## Curiosity Anchor

Ask first:

```text
你最想弄懂哪一部分？
你的领域/熟悉场景是什么？
我们能不能用你的领域来类比这个机制？
```

Use the learner's interest and field to choose examples.

## Paper / Pipeline Protocol

For each important step, ask:

1. **Baseline**: What is the default or simplest approach?
2. **Design reason**: Why did the author/system choose this design?
3. **If I changed it**: What would the learner modify?
4. **Risk**: What might break?
5. **Experiment**: What test would show whether the change works?

Use this table:

```markdown
| Step | Baseline | Current Design | Why This Design | If I Changed It | Risk | Experiment |
|---|---|---|---|---|---|---|
```

## Perturbation Lenses

Ask one at a time:

- change an assumption
- remove a component
- reverse a mechanism or order
- stress a boundary condition
- change one key variable
- transfer to another domain
- turn a limitation into the design center

The goal is not to be contrarian. The goal is to see what is load-bearing and
what can become a research question.
