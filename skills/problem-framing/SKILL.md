---
name: problem-framing
description: Turn an idea, feature request, customer complaint or founder hunch into a clear problem brief — who has the problem, the job and circumstance, evidence, current alternatives, why now, the outcome it should move, the four product risks and the riskiest assumption to test, and an appetite. Use for "we should build X", "customers keep asking for Y", "is this worth doing?", or before any spec.
---

# problem-framing

Frameworks: Jobs to Be Done; Marty Cagan's four risks (value, usability, feasibility, business
viability); Shape Up's appetite (how much time the problem is worth, decided up front); opportunity
solution tree placement.

1. **Load memory:** product file, `discovery/OST-<product>.md`, related syntheses (`DS-*`),
   `feedback.md` rows on the topic, `roadmap.md`, `metrics.md`, earlier briefs in `problems/` (refresh
   instead of duplicating), related decisions.
2. **Find the problem behind the request.** If the founder brought a solution ("add a dashboard"),
   ask or infer: who wants it, what were they trying to do, what happens today without it? Keep
   the solution as one candidate, not the frame.
3. **Write the problem statement:** "<segment> struggles to <job/progress> when <circumstance>,
   because <cause>; today they <current alternative / workaround>, which costs them <cost>."
4. **Evidence:** list supporting sources (FB / DS / data) with counts and dates; counter-evidence;
   what we don't know. Weak evidence → say so and recommend discovery first
   (`ai-product:discovery`) rather than a spec.
5. **Outcome:** which metric in `metrics.md` (or which learning goal) it should move, and how we'd
   see it. No metric fits → note that the metric set may be missing something.
6. **Risks:** for each of the four risks, what we believe, how confident, and the cheapest test of
   the riskiest one (a conversation, a prototype, a fake door, a concierge test). Feasibility →
   exact question for the `cto` member; viability (pricing, legal, cost) → `accountant` / `lawyer`;
   abuse / data exposure → `security`.
7. **Appetite:** propose a size the problem deserves (e.g. small: 1–2 weeks; big: up to 6 weeks)
   based on its value, not on an estimate of a solution. The founder sets it.
8. **Place it** in the opportunity tree and propose a roadmap slot (Now / Next / Later) — a
   proposal only; `ai-product:roadmap` handles the change when the founder agrees.
9. **Write** `problems/PB-XXXX-slug.md` from `${CLAUDE_PLUGIN_ROOT}/templates/problem-brief.md`
   with status `framing` or `ready` (evidence and appetite agreed).
10. `ai-product:log-job` — brief, open questions as obligations, hand-off questions, learnings.
