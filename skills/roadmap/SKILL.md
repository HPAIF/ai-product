---
name: roadmap
description: Prioritise and update the product roadmap — score candidate problems with RICE (or ICE for a quick pass), weigh them against strategy, the North Star and the opportunity solution tree, and propose a Now / Next / Later roadmap with a "not doing" list; apply changes only after the founder approves, recording each as a decision. Use for "what should we build next?", "prioritise these", "update the roadmap", or when new evidence or a slipped dependency changes priorities.
---

# roadmap

Frameworks: RICE (Reach × Impact × Confidence ÷ Effort); ICE as a quick variant; Now / Next /
Later horizons instead of date-based plans; Shape Up's betting table (commit one cycle at a time,
no endless backlog); North Star and input metrics as the yardstick.

1. **Load memory:** `roadmap.md`, `metrics.md`, opportunity trees, problem briefs and specs with
   their status, `feedback.md` themes, recent syntheses, decisions (especially "not doing" ones),
   product files, `ai-team/company/profile.md` (stage, runway if known). Read other members'
   obligations that constrain the product (e.g. `lawyer`, `security` high risks, `cto` capacity).
2. **Candidates:** collect items as problems / opportunities (not features). An item without a
   brief or evidence goes to **Later** or to discovery, not to Now.
3. **Score with RICE** in the table in `roadmap.md`:
   - Reach per quarter from data (name the source) or a labelled estimate;
   - Impact on the target outcome: 3 massive, 2 high, 1 medium, 0.5 low, 0.25 minimal;
   - Confidence: 100% / 80% / 50% — tied to the evidence strength; below 50% → do discovery first;
   - Effort in person-months — from the `cto` member or the founder; never invent it (mark `?`).
   Show the arithmetic. RICE informs, it doesn't decide: note strategic reasons (a key customer,
   a security or legal must-do, a dependency) that override the score, explicitly.
4. **Propose the roadmap:** Now (in progress or shaped, with appetite), Next (framed, ready to
   shape), Later (important, unframed), Not doing (with reasons). Each item names its outcome and
   evidence. Keep Now small — what the team can actually do this cycle.
5. **Show the founder** the proposed change as before → after with reasons. Only after approval:
   update `roadmap.md` ("Last updated" line with the decision ID) and record the decision.
   Publishing a roadmap externally (customers, website) needs the founder's approval of the exact
   text and is done by the founder or `marketing`.
6. **Follow-ups:** items moving to Now without a spec → obligation to write one; items needing
   effort estimates → exact question for `cto`.
7. `ai-product:log-job` — decision (before → after), obligations, learnings.
