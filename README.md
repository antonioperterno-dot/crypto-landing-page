# AeroProtocol — Crypto Landing Page

A single-page, fully responsive landing page for a fictional Layer 1 crypto
project. Built with plain **HTML**, **Tailwind CSS (via CDN)** and **vanilla
JavaScript** — no build step, no dependencies to install.

## Live Demo

Hosted on Vercel: **https://crypto-landing-page-navy.vercel.app**

## Deploy

The project is already linked to Vercel (`.vercel/project.json`), so a
production deploy is a single command:

```bash
vercel --prod
```

On Windows you can also just run the helper script:

```bash
deploy.bat
```

### Continuous deployment from GitHub

To have every push to `main` deploy automatically:

1. Install the Vercel GitHub App: https://github.com/apps/vercel
   (grant it access to the `crypto-landing-page` repository).
2. Run `vercel git connect` in this folder, or connect the repo from
   **Project → Settings → Git** in the Vercel dashboard.

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
├── index.html     # everything: markup, styles, and scripts
├── vercel.json    # static output config + security headers
├── deploy.bat     # Windows one-liner: `vercel --prod`
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
