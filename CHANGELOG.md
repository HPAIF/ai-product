# Changelog

All notable changes to the AI product manager. Versions follow semver: patch = fixes and
wording, minor = new skill / workspace files, major = breaking workspace change.
Entries that need a workspace change list a **Migration** step; `setup` (upgrade mode) applies it.

## 0.1.2 — 2026-11-23
- Ask colleagues directly, never through the founder: @mention in group chats, the Agent tool
  as main agent, "Question for @member" when called by the lead.

## 0.1.1 — 2026-11-23
- Rule "Be concise": shortest answer that keeps all important information (warnings, numbers,
  dates, sources, decisions); long only when the content needs it.

## 0.1.0 — 2026-11-22
- Basic version, to be specialised later.
- Agent `product`, rules (`RULES.md`): evidence over opinion, never invent, problem before
  solution, outcomes over output, the founder decides, customer privacy, append-only history,
  escalation, confidentiality, never act for the company.
- Skills: setup, discovery (JTBD, opportunity solution trees, Mom Test), problem-framing (four
  risks, appetite), write-spec (spec / PRD and Shape Up pitch), roadmap (RICE, Now / Next /
  Later), product-metrics (North Star, AARRR, Sean Ellis PMF survey), feedback-log, log-job,
  improve.
- Workspace folder `ai-team/product/` (workspace contract v1): feedback log, roadmap, metrics,
  discovery, problem briefs, specs.
- SessionStart hook: specs in draft or review, obligations, journal, inbox, pending learnings.
- Research notes in `docs/research.md`.
- **Migration:** none (first release).
