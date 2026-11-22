---
name: setup
description: Set up (or repair/upgrade) the AI product manager in the current project — creates the private ai-team/ workspace (shared company files + ai-team/product/ with feedback log, roadmap, metrics, discovery, problem briefs and specs), registers the product member in team.md, and offers privacy and scheduled runs. Use on first use in a project, when the workspace is missing, or after a plugin update that changes the workspace.
---

# setup

Template files are in `${CLAUDE_PLUGIN_ROOT}/skills/setup/workspace/`. Never overwrite an
existing file in `ai-team/` — the workspace may already hold real history.

1. **Explain** in two lines what will be created (`ai-team/` private workspace) and that nothing
   leaves the machine.
   **Location:** if an `ai-team/` already exists in this folder or a parent folder, join it —
   never create a second one. Otherwise ask where to create it: in this folder (default), or in a
   parent company folder when this project is one of several products (layout
   `<company>/ai-team/` next to `<company>/projects/<product>/`).
2. **Ask** (one question at a time, skip what is already in `ai-team/team.md`):
   - answer language (default English).
   There is no jurisdiction question for this member; leave `team.md`'s jurisdiction as it is
   (`TBD` if you create the file).
3. **Create shared files if missing** (another member may have created them already):
   `ai-team/README.md`, `ai-team/team.md`, `ai-team/company/profile.md`,
   `ai-team/company/documents.md`, `ai-team/company/products/_template.md`. Fill `team.md`
   (date, `workspace_contract: 1`) and the profile's stage date if you created them.
4. **Create the member folder** `ai-team/product/` from the template's `product/` folder:
   `learnings.md`, `feedback.md`, `roadmap.md`, `metrics.md`,
   `history/{journal,decisions,obligations}.md`, `discovery/README.md`,
   `discovery/notes/README.md`, `problems/README.md`, `specs/README.md`, `research/README.md`,
   `digests/README.md`, `inbox/README.md`.
5. **Products:** list the product files in `ai-team/company/products/`. For each product, add a
   section to `roadmap.md` and create `discovery/OST-<slug>.md` from
   `${CLAUDE_PLUGIN_ROOT}/templates/opportunity-tree.md` (outcome left as `?`). No product files
   yet → offer to draft one from the project's README / docs; the founder confirms before you
   write.
6. **Register** a row in `team.md`: `product | ai-product | ai-product:product |
   ai-team/product/ | <plugin version> | <today> | discovery, problem framing, specs, roadmap,
   product metrics, feedback log`.
7. **First journal entry** `J-0001 · <today> · setup` and obligations:
   - `O-0001` "Fill in company/profile.md and a product file in company/products/" (due in 14
     days) — only if no other member created it already;
   - `O-0002` "Define the North Star metric and 3–5 input metrics (product-metrics)" (due in 21
     days);
   - `O-0003` "Talk to at least 3 customers or prospects this fortnight; drop notes in
     ai-team/product/inbox/" (due in 14 days, type recurring).
8. **Offer, don't force** (ask each; do only what is approved):
   - **Privacy:** if the project is a git repo, add `ai-team/` to `.gitignore`; suggest
     `git init` inside `ai-team/` for private, tamper-evident history.
   - **Scheduled runs:** weekly `feedback-log` inbox triage (e.g. Fridays 16:00) and monthly
     `product-metrics` review (1st of month). Create them if a scheduling tool is available in
     this session; otherwise explain how to schedule them in the Claude app.
   - **Habit:** suggest the founder drops interview notes, support threads and analytics exports
     into `ai-team/product/inbox/` as they happen.
9. **Upgrade mode** (workspace exists): compare with the template, create only missing files or
   folders, apply migrations listed in `CHANGELOG.md` for versions newer than the one in
   `team.md`, update the version in `team.md`, and log what changed.
10. Finish with a short summary: what exists now, the three most useful first requests ("help me
    plan customer interviews", "what's our North Star?", "frame this idea as a problem"), and
    `log-job`.
