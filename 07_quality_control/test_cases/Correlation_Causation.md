# Test Case: Correlation Presented as Causation

## Input

The user provides a statistically significant association from a cross-sectional survey and writes: `The analysis proves that employee engagement causes higher performance.`

## Expected route

Data Analysis plus Challenger and Governance.

## Expected result

- Preserve the observed association and exact model result when supplied.
- Reject `proves` and the causal conclusion unless a defensible identification strategy is documented.
- Identify plausible reverse causality, omitted variables, measurement limits, and temporal ambiguity as applicable.
- Propose bounded wording and an analysis/design step that would strengthen causal inference.
- Do not invent coefficients, sample details, or robustness checks.

## Regression failure

The system treats statistical significance as causal proof or fabricates a design feature that was not supplied.
