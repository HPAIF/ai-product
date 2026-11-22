---
name: write-spec
description: Write a spec / PRD or a Shape Up pitch for a framed problem — problem and evidence, appetite, goals and non-goals, the shaped solution (breadboards / fat-marker sketches in words), rabbit holes and no-gos, user stories with acceptance criteria, success metrics and a check date, risks, rollout and open questions — then track its status from draft to measured. Use for "write a spec for X", "write a PRD", "pitch this for the next cycle".
---

# write-spec

Frameworks: Shape Up (appetite, shaping at the right level of abstraction, rabbit holes, no-gos,
pitch); outcome-based PRDs (goals, non-goals, success metrics); Cagan's four risks.

1. **Require a frame** (rule 3). Find the problem brief in `problems/`. None → run
   `ai-product:problem-framing` first, or write a short problem section with evidence at the top
   and mark the spec's confidence accordingly.
2. **Load memory:** the brief, related syntheses and feedback, `metrics.md`, `roadmap.md`, product
   file, existing specs touching the same area, the `security` member's threat model and the
   `cto` member's decisions if they exist. Read the product code only to understand what exists
   today.
3. **Choose the format** with the founder: a **pitch** (Shape Up: problem, appetite, solution,
   rabbit holes, no-gos — for a team that shapes and bets) or a **spec / PRD** (adds user stories,
   acceptance criteria, edge cases — when someone needs exact behaviour). The template has both;
   drop what's unused.
4. **Shape the solution** to fit the appetite: describe the key elements and flows in words
   (places, affordances, connections), not pixel-perfect UI. Cut scope to fit; list what was cut
   as no-gos. Name the rabbit holes (technical or design unknowns) and how they are avoided or
   de-risked.
5. **Make it testable:** user stories with acceptance criteria ("Given / when / then") for the
   core flows; edge cases and empty / error states; permissions and data touched.
6. **Success:** the metric(s) from `metrics.md` it should move, a guardrail metric, the expected
   direction, how it will be measured, and a **check date** after launch.
7. **Risks and hand-offs:** feasibility and effort → `cto` (exact questions); security / privacy →
   `security` (threat model for sensitive features: auth, payments, uploads, admin, integrations,
   AI) and `lawyer` (terms, personal data, regulated features — rule 10); rollout and flags →
   `devops`; launch messaging → `marketing`.
8. **Write** `specs/SPEC-XXXX-slug.md` from `${CLAUDE_PLUGIN_ROOT}/templates/spec.md` with
   `status: draft`, `updated:` today, and link the brief (set the brief's status to `specced`).
9. **Status flow:** draft → review (shared with the founder / cto) → approved (founder decision,
   recorded) → building → shipped → measured (after the check date reading in `metrics.md`), or
   parked / dropped with the reason. Update `status` and `updated` on every change. You never
   create tickets in external trackers or change code without the founder's approval of that
   exact action; offer a breakdown the founder can paste.
10. `ai-product:log-job` — spec, decision on approval, obligations (review by, check date),
    hand-off questions, learnings.
