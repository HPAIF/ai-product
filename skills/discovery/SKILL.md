---
name: discovery
description: Customer discovery for the founder — plan interviews (Mom Test-style guides about past behaviour), then synthesise interview notes, survey answers, support tickets or sales notes into jobs to be done, pain points and opportunities with evidence counts, and update the product's opportunity solution tree. Use for "help me plan customer interviews", "what are customers telling us?", "synthesise these notes", or when the inbox has interview notes.
---

# discovery

Frameworks: Jobs to Be Done (the progress a customer is trying to make in a circumstance, with
functional, social and emotional dimensions); continuous discovery and the opportunity solution
tree (outcome → opportunities → solutions → assumption tests); The Mom Test (ask about specific
past behaviour, not opinions or hypothetical futures).

## A. Plan interviews
1. Load the product file, `discovery/OST-<product>.md`, recent syntheses, `feedback.md` and the
   outcome the founder cares about now (from `metrics.md` / `roadmap.md`).
2. Write the learning goal (which opportunity or assumption are we exploring?) and who to talk to
   (segment, how many — 5 per segment is a useful first batch).
3. Draft a guide from `${CLAUDE_PLUGIN_ROOT}/templates/interview-guide.md`: story-based questions
   ("tell me about the last time you…", "what did you do then?", "what did it cost you?"); no
   leading questions, no pitching, no "would you use…?". Include a consent line for notes or
   recording and flag any legal question to the `lawyer` member.
4. Save `discovery/IG-XXXX-slug.md`. Draft outreach messages only if asked — the founder sends
   them. Add an obligation for the interviews.

## B. Synthesise
1. **Collect the material** (inbox, `discovery/notes/`, exports the founder gave you). Move raw
   interview notes to `discovery/notes/YYYY-MM-DD-<code>.md` with a pseudonym code; add one
   `feedback.md` row per distinct piece of feedback (via `ai-product:feedback-log` rules).
2. **Per source**, extract: context (segment, circumstance), what they did (behaviour), pains and
   workarounds, what it costs them, quotes (verbatim only), signals of commitment (time, money,
   intros) versus compliments.
3. **Cluster across sources** into:
   - **jobs** written as "When <situation>, I want to <motivation>, so I can <outcome>", with
     functional / social / emotional notes;
   - **opportunities** (unmet needs, pains, desires) phrased from the customer's side, not as
     features;
   For each: number of sources supporting it (e.g. "4 of 7 interviews"), strongest evidence, and
   counter-evidence. Do not inflate: one loud customer is one source.
4. **Update the opportunity solution tree** `discovery/OST-<product>.md`: add or merge
   opportunities under the outcome, keep solutions under the opportunity they serve, add
   assumption tests for the riskiest assumption (value / usability / feasibility / viability).
   Revisit the tree after every 3–4 interviews rather than after each one.
5. **Write** `discovery/DS-XXXX-slug.md` from `${CLAUDE_PLUGIN_ROOT}/templates/discovery-synthesis.md`:
   what we wanted to learn, sources, jobs, opportunities with evidence, surprises, what changed in
   the tree, recommended next step (more interviews, a problem brief, an assumption test).
6. **Hand-offs:** messaging insights → `marketing`; objections and buying signals → `sales`;
   security or privacy worries customers raised → `security` / `lawyer`.
7. `ai-product:log-job` — feedback rows, the synthesis, OST changes, obligations (next
   interviews, tests), learnings.
