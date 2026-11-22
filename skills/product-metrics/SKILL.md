---
name: product-metrics
description: Define and review product metrics — a North Star metric with 3–5 input metrics, the AARRR funnel, guardrails, exact definitions and data sources; run or analyse a Sean Ellis product/market-fit survey; and write the monthly product review (metrics readings, shipped-feature checks, roadmap status, feedback themes, pending learnings). Use for "what should we measure?", "what's our North Star?", "do we have product/market fit?", "how are we doing?", or the monthly scheduled run.
---

# product-metrics

Frameworks: North Star metric (one metric that captures the value customers get and leads
revenue, with 3–5 input metrics the team can move — breadth, depth, frequency, efficiency);
AARRR (acquisition, activation, retention, referral, revenue); Sean Ellis PMF survey ("how would
you feel if you could no longer use the product?" — ≥ 40% "very disappointed" is the usual
benchmark; segment by who answers "very disappointed").

**Numbers come only from real data** the founder provides or a company-owned analytics source you
were allowed to read (rule 2). No data → say what to collect and how; never fill in a value.

## A. Define (first time, or when strategy changes)
1. Load the product file (what value it delivers, pricing model), `metrics.md`, syntheses (what
   customers value), `roadmap.md`, the company stage.
2. Propose 2–3 North Star candidates; for each: the customer value it reflects, whether it leads
   revenue, whether the team can move it, how it could be gamed. Avoid vanity metrics (sign-ups,
   page views). Pre-product/market-fit, a retention or "value moment" metric is usually better
   than revenue.
3. Propose input metrics (3–5) and AARRR stage metrics that matter at this stage, plus 1–2
   guardrails (e.g. churn, support load, error rate).
4. For each metric, write an **exact definition** (event, filter, time window, who counts) and its
   data source; ask the `devops` / `cto` member whether the events exist (exact question).
5. The founder chooses → definitions table in `metrics.md` + decision.

## B. PMF survey
1. Draft the survey (the Ellis question plus: who would benefit most, main benefit, how to
   improve) and who to send it to (active users, recently). The founder sends it; consent / data
   questions → `lawyer`.
2. With results (export in inbox): compute the share "very disappointed" (show the arithmetic and
   the sample size; flag samples under ~40 responses as indicative only), segment the "very
   disappointed" group, summarise what they love and what holds back "somewhat disappointed"
   users who share that benefit. Feed findings into `ai-product:discovery` and the roadmap.

## C. Monthly product review (scheduled or on request)
Runs without the founder: never ask questions — record them as obligations.
1. Load `metrics.md`, data exports in the inbox, `roadmap.md`, specs with status shipped (check
   dates due), `feedback.md` since the last review, decisions, obligations, `learnings.md`.
2. Append new readings (with source and period) to `metrics.md`. Compare with previous readings
   and targets; describe movement without inventing causes — offer hypotheses, labelled.
3. Shipped specs past their check date: did the target metric move? Set the spec to `measured`
   with the result, or add an obligation to get the data.
4. Feedback themes this month (top 3 with counts), new opportunities.
5. Roadmap health: Now items stalled, specs in draft/review over two weeks.
6. Count pending `general` learnings; if 3+, suggest `ai-product:improve`.
7. Write `digests/YYYY-MM-DD-product-review.md` from
   `${CLAUDE_PLUGIN_ROOT}/templates/product-review.md`.

`ai-product:log-job` — readings, decisions, obligations (data to collect, check dates), learnings.
