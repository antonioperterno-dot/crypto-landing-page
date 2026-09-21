# AeroProtocol — Crypto Landing Page

A single-page, fully responsive landing page for a fictional Layer 1 crypto
project. Built with plain **HTML**, **Tailwind CSS (via CDN)** and **vanilla
JavaScript** — no build step, no dependencies to install.

## Live Demo

Hosted on Vercel (team `antonioperterno`, project `crypto-landing-page`):

- **https://crypto-landing-page-antonioperterno.vercel.app** (canonical)
- **https://crypto-landing-page-navy.vercel.app** (alias, same deployment)

Deployment protection is disabled, so the page is publicly reachable.

## Deploy

The project is already linked to Vercel (`.vercel/project.json`), so a
production deploy is a single command:

```bash
vercel --prod --yes
```

On Windows you can also just run the helper script:

```bash
deploy.bat
```

Note: `.vercel/output/` is **not** committed or kept around. This is a plain
static site with no build step, so every deploy uploads `index.html` straight
from the working tree — editing the file and re-running the command is enough.

### Continuous deployment from GitHub

Two options — pick one.

**Option A — Vercel GitHub App (recommended)**

Gives you preview deployments for pull requests and deploy status comments.

1. Install the app: https://github.com/apps/vercel — grant it access to the
   `crypto-landing-page` repository.
2. Run `vercel git connect` in this folder, or connect the repo from
   **Project → Settings → Git** in the Vercel dashboard.

**Option B — GitHub Actions**

The workflow at `.github/workflows/deploy.yml` runs on every push to `main`.
It stays dormant until you give it a token:

1. Create a token at https://vercel.com/account/tokens
   (scope it to the `antonioperterno` team).
2. Add it to the repo: **Settings → Secrets and variables → Actions →
   New repository secret**, named `VERCEL_TOKEN`.
   Or from the CLI: `gh secret set VERCEL_TOKEN`

The next push to `main` then deploys automatically. Until the secret exists,
the workflow skips with a notice instead of failing.

## Features

- **Sticky header** that gains a blurred panel background on scroll, with a
  hamburger menu on mobile.
- **Hero section** with ambient gradient glows, an animated grid backdrop, a
  gradient headline and two CTAs.
- **Stats bar** with counters that animate up when scrolled into view.
- **Feature cards** with gradient hover borders and expandable detail text.
- **Tokenomics** donut chart rendered via CSS `conic-gradient`, with a
  colour-keyed legend.
- **Footer** with social links and an auto-updating copyright year.

## Accessibility & Responsiveness

- Tested with no horizontal overflow at 390px viewport width.
- Menu toggle exposes `aria-expanded`; icon-only links and buttons carry
  `aria-label`s.
- Honours `prefers-reduced-motion` — animations and smooth scrolling are
  disabled for users who request it.

## Project Structure

```
.
├── .github/
│   └── workflows/
│       └── deploy.yml   # GitHub Actions → Vercel (needs VERCEL_TOKEN secret)
├── index.html           # everything: markup, styles, and scripts
├── vercel.json          # static output config + security headers
├── deploy.bat           # Windows one-liner: `vercel --prod`
└── README.md
```

## Run Locally

No install required — just open the file:

```bash
start index.html      # Windows
open index.html       # macOS
```

## Disclaimer

AeroProtocol is a fictional project created for demonstration purposes.
Nothing here is financial advice.
