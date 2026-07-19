# AGENTS.md

## Repo Shape

Static GitHub Pages site — no build step, no framework, no dependencies. All edits are direct HTML/CSS/JS.

- **`index.html`** — landing page with guide cards and filter pills.
- **`guides/*.html`** — individual guide pages (one per heist/topic). Currently: `cayo-perico`, `clukin-bell-heist`, `auto-shop-contracts`, `unlock-everything`.
- **`assets/css/{base.css,guide.css,index.css}`** — shared base, guide-page, and index-page styles. Pages link `base.css` + a page-specific sheet.
- **`assets/js/{guide.js,index.js}`** — TOC scroll tracking + copy buttons (`guide.js`), filter pills (`index.js`). No bundler; scripts are vanilla.
- **`assets/img/`** — currently empty; images are loaded from external URLs.

## Key Conventions

- **No build, lint, test, or typecheck.** Verify changes by reading the files and matching existing patterns.
- **No `lua-script/` directory.** It was removed in commit `c143b0d`. Any AGENTS.md or doc references to it are stale.
- **Links from `guides/` must use `../` prefix** to reach `assets/` and `index.html`.
- **New guide page**: copy an existing guide HTML (e.g., `guides/cayo-perico.html`) as template. Wire it into `index.html` grid card + footer links. Add `data-cat` attribute for filter compatibility.
- **Fonts**: Google Fonts loaded via `<link>` in `<head>` — Oswald, Barlow, Barlow Condensed, JetBrains Mono. No self-hosted font files.
- **CSS variables** for all colors/typography are in `base.css` `:root`. Page-specific sheets override nothing; they add layout/component styles.
- **Copy buttons** require `data-copy` attribute on `.copy-btn` elements; `guide.js` wires them automatically.
- **Images** in guide cards use external URLs (not local assets). New guides should follow the same pattern.
