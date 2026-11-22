# Contributing

Improvements are welcome — new skills, better procedures, sharper templates, framework updates.
Many will arrive as pull requests from the agent's own `improve` skill.

## The one rule: no company data
This repository is public. Never commit anything from an `ai-team/` workspace: company, product,
customer or interviewee names, quotes from interviews or feedback, metric values, revenue, prices,
roadmap items, dates of private events. Use neutral examples ("a B2B scheduling tool", "weekly
active teams").

## What goes where
| Change | File |
|---|---|
| A rule every company should follow | `RULES.md` (rules may be added or clarified, never weakened) |
| A procedure | `skills/<skill>/SKILL.md` (new skill → new folder + row in RULES.md skills table) |
| A document format | `templates/` |
| A framework or method note | the skill that uses it + `docs/research.md` |
| Workspace files | `skills/setup/workspace/` + a **Migration** note in `CHANGELOG.md` |

Hard rules that may never be weakened: evidence over opinion · never invent · problem before
solution · outcomes over output · the founder decides · customer privacy · append-only history ·
escalation · confidentiality · never act for the company.

## Release
1. Bump `version` in `.claude-plugin/plugin.json` (patch / minor / major — see CHANGELOG).
2. Add a `CHANGELOG.md` entry (with a Migration step if the workspace changes).
3. `claude plugin validate .` must pass.
4. Merge to `main`. Users get it with `/plugin update ai-product@ai-team`.
