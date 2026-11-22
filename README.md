# AI Product

An in-house product manager for founders, running in Claude Code. Part of the
**[AI Team](https://github.com/HPAIF/ai-team)** — agents that work together for your company.

It helps you find out what customers need and decide what to build: it plans customer interviews
and synthesises what you learn into jobs to be done and an opportunity solution tree, frames
problems before solutions, writes specs and Shape Up pitches, prioritises the roadmap (RICE,
Now / Next / Later), defines your North Star and input metrics, and keeps an evidence-linked
feedback log.

> **Evidence over opinion.** It links every insight to its source, never invents customers,
> quotes or numbers, and never contacts customers or publishes anything for you. **You decide**
> what gets built; it records why.

## Install

In Claude Code:

```
/plugin marketplace add HPAIF/ai-team
/plugin install ai-product@ai-team
```

Or install only this member, straight from its repository:

```
/plugin marketplace add HPAIF/ai-product
/plugin install ai-product@ai-product
```

Then, in your project (or company folder), say **"set up the AI product manager"**. The `setup`
skill creates or joins the private `ai-team/` workspace, prepares a roadmap section and an
opportunity tree per product, and offers `.gitignore` and scheduled runs. Nothing leaves your
machine.

To share the setup with your team, commit this to the project's `.claude/settings.json`:

```json
{
  "extraKnownMarketplaces": {
    "ai-team": { "source": { "source": "github", "repo": "HPAIF/ai-team" } }
  },
  "enabledPlugins": { "ai-product@ai-team": true }
}
```

## Use it

Talk normally — Claude hands product work to the `ai-product:product` agent — or start a session
as the product manager: `claude --agent ai-product:product`.

| You say | What happens (skill) |
|---|---|
| "Help me plan customer interviews" / "synthesise these interview notes" | interview guide, or synthesis + opportunity tree update (`discovery`) |
| "We should build X" / "customers keep asking for Y" | problem brief with evidence, risks and appetite (`problem-framing`) |
| "Write a spec for X" / "pitch this for the next cycle" | spec / PRD or Shape Up pitch (`write-spec`) |
| "What should we build next?" | RICE scores + proposed Now / Next / Later (`roadmap`) |
| "What's our North Star?" / "do we have product/market fit?" | metric definitions, PMF survey analysis (`product-metrics`) |
| "A customer said…" / "process the inbox" | feedback log rows linked to opportunities (`feedback-log`) |
| "We approved SPEC-0002" / "we shipped it" | history, roadmap and specs updated (`log-job`) |
| "Improve yourself" | anonymised upgrade proposal for this plugin (`improve`) |

Each session in a project with a workspace starts with specs in draft or review, overdue and
upcoming obligations, recent jobs and pending learnings (session hook).

**Scheduled runs** (offered by `setup`): weekly `feedback-log` inbox triage and monthly
`product-metrics` review.

## How it is built

```
RULES.md                 hard rules: evidence over opinion, never invent, problem before solution,
                         outcomes over output, the founder decides, customer privacy…
agents/product.md        the agent (reads RULES.md, the product files and the workspace)
skills/                  setup · discovery · problem-framing · write-spec · roadmap ·
                         product-metrics · feedback-log · log-job · improve
templates/               problem brief, spec/pitch, discovery synthesis, interview guide,
                         opportunity tree, product review, research memo
hooks/                   session-start context
docs/research.md         the research and frameworks behind the skills
```

Your data lives in **your project**, never in the plugin:

```
ai-team/
├── team.md                  installed members
├── company/                 shared with other members: profile, documents, products/<product>.md
└── product/                 learnings, feedback log, roadmap, metrics, history (journal, decisions,
                             obligations), discovery, problems, specs, research, digests, inbox
```

See the [workspace contract](https://github.com/HPAIF/ai-team/blob/main/docs/workspace.md).

## Privacy
- The plugin is public; your workspace is private. Keep `ai-team/` out of public repositories
  (`setup` offers to add it to `.gitignore`) — `git init` inside it for a private history.
- Interview notes and feedback contain personal data: people are pseudonymised in syntheses and
  the log; raw notes stay in `ai-team/product/discovery/notes/`.
- The agent searches the web for methods and public market facts, never your customers, roadmap
  or numbers. Files it reads are processed by the model you use in Claude Code.

## Self-improvement
1. After corrections, mistakes or missing steps, the agent writes a lesson to
   `ai-team/product/learnings.md` and applies it from then on.
2. Lessons useful to everyone are marked `general`. The `improve` skill turns them into an
   anonymised pull request to this repository — only after you approve the exact text, and never
   one that weakens the hard rules.
3. Merged improvements reach every user with the next plugin update.

## Team hand-offs
Works with the other AI Team members through the shared workspace: `lead` (entry point),
`lawyer` (consent, terms, regulated features), `accountant` (pricing consequences), `cto`
(feasibility, building specs), `devops` (rollout, analytics), `security` (threat models for
sensitive features), `marketing` (positioning, launch), `sales` (feedback from deals). If a member
isn't installed, it names the plugin (`ai-<member>`).

## Upgrading
`/plugin marketplace update ai-team`, then `/plugin update ai-product@ai-team` (restart Claude
Code). Run "set up the AI product manager" again to apply workspace migrations; it never
overwrites your history.

## Contributing
See [CONTRIBUTING.md](CONTRIBUTING.md). License: [MIT](LICENSE).
