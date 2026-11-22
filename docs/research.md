# Research behind the AI product member (v0.1.0)

Notes from the research done before building this plugin (2026-11-22). Links plus short
paraphrases; open the sources for the full text.

## What a product manager does at an early-stage startup

- Before product/market fit, almost everything is secondary to finding it: a product that a
  strong market actually wants. The job is to learn fast what customers need, decide what to
  build (and not build), and check whether it worked — not to run a feature factory.
  - Marc Andreessen, *The only thing that matters* (product/market fit) — https://pmarchive.com/guide_to_startups_part4.html
- In a small company the founder usually *is* the product manager. An AI PM helps most by keeping
  the evidence (interviews, feedback, metrics) organised, framing problems sharply, writing specs
  the builders can use, and prompting regular customer contact and metric reviews.

**Implications for this plugin:** discovery and a feedback log keep evidence; problem framing
comes before specs; prioritisation is explicit and recorded; metrics close the loop. Hard rules
stop the agent from inventing customers, quotes or numbers, and leave decisions to the founder.

## Frameworks chosen and where they are used

| Framework | What it is (paraphrase) | Used in |
|---|---|---|
| **Jobs to Be Done** (Christensen Institute) — https://www.christenseninstitute.org/theory/jobs-to-be-done/ | People "hire" a product to make progress in a particular circumstance; every job has functional, social and emotional dimensions, and the job can change when circumstances change. | `discovery` (job statements), `problem-framing` |
| **Opportunity solution trees / continuous discovery** (Teresa Torres) — https://www.producttalk.org/opportunity-solution-trees/ | A tree from a desired outcome, to the opportunity space (needs, pains, desires), to several candidate solutions per target opportunity, to assumption tests. Interview customers every week with story-based questions; revisit the opportunity space every 3–4 interviews; keep the tree as a living document. | `discovery`, `opportunity-tree` template, `problem-framing` |
| **The Mom Test** (Rob Fitzpatrick) — https://www.momtestbook.com/ | How to get honest learning from customer conversations even when people are polite: ask about their life and past behaviour, avoid biased or hypothetical questions, look for commitment rather than compliments. | `interview-guide` template, `discovery` |
| **Four big product risks** (Marty Cagan, SVPG) — https://www.svpg.com/four-big-risks/ | Value (will they buy / use it), usability (can they figure it out), feasibility (can we build it), business viability (does it work for the business: go-to-market, legal, cost, monetisation). | `problem-framing`, `write-spec` risks |
| **Shape Up** (Basecamp) — https://basecamp.com/shapeup | Appetite (time we want to spend, set before the solution), shaping (settle the key parts before committing), pitches with problem, appetite, solution, rabbit holes and no-gos; a betting table chooses work for six-week cycles with a cool-down; no backlog. | `write-spec` (pitch format), `problem-framing` (appetite), `roadmap` (betting) |
| **RICE** (Intercom) — https://www.intercom.com/blog/rice-simple-prioritization-for-product-managers/ | Score = Reach × Impact × Confidence ÷ Effort; impact on a 3 / 2 / 1 / 0.5 / 0.25 scale, confidence 100 / 80 / 50%, effort in person-months. | `roadmap` |
| **Now / Next / Later roadmap** (ProdPad, Janna Bastow) — https://www.prodpad.com/blog/invented-now-next-later-roadmap/ | Time horizons instead of dates: Now is defined and in progress, Next is sketched, Later is unframed problems. Avoids false certainty and shipping-to-dates; ties accountability to outcomes. | `roadmap`, `roadmap.md` workspace file |
| **North Star metric** (Amplitude) — https://amplitude.com/blog/product-north-star-metric | One metric that reflects the customer value delivered, expresses strategy and leads revenue, with 3–5 input metrics the team can influence (breadth, depth, frequency, efficiency). | `product-metrics`, `metrics.md` |
| **AARRR pirate metrics** (Dave McClure, 2007) — overview: https://posthog.com/product-engineers/aarrr-pirate-funnel | Acquisition, activation, retention, referral, revenue — a funnel of the customer lifecycle meant to keep startups off vanity metrics. Sources differ on the order of the last two stages. | `product-metrics` |
| **Sean Ellis PMF survey / Superhuman PMF engine** (First Round Review) — https://review.firstround.com/how-superhuman-built-an-engine-to-find-product-market-fit/ | Ask users how they'd feel if they could no longer use the product; around 40% "very disappointed" separates products with traction. Segment the "very disappointed" users, learn what they love, address what holds back similar "somewhat disappointed" users, track the score over time. | `product-metrics` (PMF survey) |

## Considered and left for later

- **Kano model, Opportunity scoring (ODI)** — useful for later-stage prioritisation; RICE + the
  opportunity tree cover v0.1.0.
- **OKRs** — company-level goal setting is closer to the `lead` member; the product member links to
  outcomes in `metrics.md`.
- **Experiment design / A/B testing** — needs traffic most early-stage products don't have;
  assumption tests in the opportunity tree cover cheap experiments for now.
- **Competitive analysis skill** — handled as a research memo for now; may become its own skill.

## Skills derived from the research

`discovery` (JTBD, OST, Mom Test) · `problem-framing` (JTBD, four risks, appetite) · `write-spec`
(Shape Up pitch + outcome-based PRD) · `roadmap` (RICE, Now/Next/Later, betting) ·
`product-metrics` (North Star, AARRR, Sean Ellis survey) · `feedback-log` (evidence register
linked to the opportunity tree).
