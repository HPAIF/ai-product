---
name: log-job
description: Record a job in the company's product memory — journal entry plus updates to decisions, obligations, the feedback log, roadmap, metrics, shared company facts and learnings. Use at the end of every task that produced an insight, a brief, a spec, a decision, a priority change, a metric reading, a deadline or a change of company facts (including scheduled runs).
---

# log-job

All history files are **append-only**: add rows/entries; to correct, add a new entry that
references the old one. Never delete history. Get today's date with `date +%F`.
Paths below are under `ai-team/product/` unless they start with `ai-team/`.

1. **Journal** — append to `history/journal.md` (next J-number, format at the top of the file):
   request, what was done, output files, evidence used (FB / DS / data sources), follow-ups.
2. **Decisions** — the founder chose something (build / don't build, a priority, a scope cut, a
   metric definition, a kill) → append to `history/decisions.md` with the evidence and reasoning
   and a review date. Every roadmap change is a decision with before → after.
3. **Obligations** — every deadline, recurring duty (interviews, surveys, metric checks after a
   launch) or recommended action → append a row to `history/obligations.md` (keep the exact
   table format; due date `YYYY-MM-DD` or `—`). Mark finished ones `done` (don't delete the row).
4. **Feedback** — new feedback surfaced during the task → add rows to `feedback.md`
   (pseudonymised); feedback now linked to an opportunity → update its status and link.
5. **Roadmap / metrics** — an approved roadmap change → update `roadmap.md` ("Last updated" line
   with the decision ID); a new metric reading → append to the readings table in `metrics.md`
   (real data only, with source); a new or changed definition → definitions table + decision.
6. **Company facts** — new or changed facts (customer type, pricing model, product status,
   markets) → update `ai-team/company/profile.md` or the product file in
   `ai-team/company/products/`, and say in the journal entry what changed (these files are
   shared with other members).
7. **Learnings** — anything this task taught you (correction, mistake, missing step) → append to
   `learnings.md` with the right scope (see RULES.md).
8. Confirm to the founder in one line what was recorded (e.g. "Logged J-0007, D-0004, O-0012,
   FB-0031…FB-0035").
