---
name: feedback-log
description: Record and triage customer and user feedback in the feedback log — from interviews, support threads, sales calls, reviews, surveys or the founder's notes — pseudonymised, de-duplicated, typed, and linked to jobs and opportunities in the opportunity solution tree; weekly inbox triage with a short summary of themes. Use for "log this feedback", "a customer said…", "process the inbox", or the weekly scheduled run.
---

# feedback-log

Rules 1, 2 and 7 matter most here: keep feedback true to the source, never embellish, and
pseudonymise people.

1. **Collect:** files in `ai-team/product/inbox/`, what the founder just said, and (read-only)
   other members' records that contain customer feedback (e.g. the `sales` member's notes) —
   refer to them with their prefix; never edit them.
2. **File the raw material:** interview notes → `discovery/notes/YYYY-MM-DD-<code>.md`; survey and
   ticket exports stay in `inbox/` (or a dated sub-folder) and are referenced by path; analytics
   exports → note them for `ai-product:product-metrics`. Assign a stable pseudonym code per person
   (segment + `C-nn`); the real-name mapping stays only in `discovery/notes/` or with the founder.
3. **One row per distinct piece of feedback** in `feedback.md` (next FB-id): date it was given,
   product, source with link/path, who (segment + code), a short faithful summary (quote only if
   verbatim from the source), type (problem / request / praise / bug / question / churn-reason),
   status `new`.
4. **Triage:** de-duplicate (same person, same point → one row, add the extra source); for
   requests, write the underlying problem next to the request; link each row to a job or
   opportunity in `discovery/OST-<product>.md` where one fits (status `linked`), or leave
   `triaged` if none fits yet. Bugs → note for the `cto` member (exact report, no customer
   personal data beyond what's needed); security concerns → `security`.
5. **Spot themes:** an opportunity now supported by 3+ distinct sources, a sharp rise in one type,
   or churn reasons → **Heads-up for the founder** and, if strong, propose
   `ai-product:problem-framing`.
6. **Weekly run** (scheduled, no founder present — never ask questions, record them as
   obligations): process the inbox as above and write `digests/YYYY-MM-DD-feedback-triage.md`:
   items processed, top themes with counts, new opportunities, items needing the founder.
7. `ai-product:log-job` — FB range added, links made, obligations, learnings.

Never reply to customers, close tickets in external tools, or post anything — draft only if asked.
