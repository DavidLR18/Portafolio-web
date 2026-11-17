# Design system — David Londoño R. portfolio

Version 1.0 · November 2026

- **Source of truth for values:** the `@layer tokens` block in `sitio/index.html`. If this file and the CSS disagree, the CSS wins and this file gets fixed.
- **Visual reference:** `diseno/portafolio.pen`, boards *Sistema · Fundamentos* and *Sistema · Componentes*. The Pen.Dev variables use the same names as the CSS tokens, without the `--color-` prefix.
- **UI copy** is Spanish (es-CO). Code, comments and this document are English.

## Principles

1. **Editorial and warm.** Raleway does the work. Instrument Serif italic accents one word or phrase per headline, never more.
2. **Lime is light, not text.** Lime is used for dots, glows, borders and accents on the dark panel. On light backgrounds, accent text is `--color-accent` (forest ink).
3. **Few boxes.** Hierarchy comes from size and space. Use a card only when it groups something that can be opened.
4. **Move in, never fade.** Motion uses `transform` only; text is always readable. Everything respects `prefers-reduced-motion`.

## Color

### Primitives

| Token | Value | Name |
|---|---|---|
| `--lime` | `#B7D900` | Lima |
| `--forest` | `#2E6B12` | Verde bosque |
| `--forest-ink` | `#24560E` | Bosque tinta |
| `--paper` | `#F1F2EC` | Papel |
| `--white` | `#FFFFFF` | Blanco |
| `--sage` | `#E6E9DD` | Salvia |
| `--night` | `#121410` | Noche |
| `--ink-900` | `#111111` | Tinta |
| `--ink-600` | `#55545C` | Tinta 2 |
| `--ink-400` | `#6E6D76` | Tinta 3 |

### Semantic tokens

Components use only these tokens, never the primitive or a raw hex.

| Token | Maps to | Use |
|---|---|---|
| `--color-bg` | paper | Page background |
| `--color-surface` | white | Cards, chips, active filter, status pill |
| `--color-card` | sage | Image wells, inactive stages, filter track |
| `--color-ink` | ink-900 | Headlines, primary text, solid buttons |
| `--color-ink-2` | ink-600 | Body copy, descriptions, eyebrows |
| `--color-ink-3` | ink-400 | Metadata only (years, client names) |
| `--color-line` | `rgba(17,17,17,.12)` | 1 px borders and dividers |
| `--color-accent` | forest-ink | Serif accent word, focus ring, current stage |
| `--color-highlight` | lime | Dots, step numbers, badges, accent on dark |
| `--color-dark` | night | Process panel |
| `--color-on-dark` | white | Text on the dark panel |
| `--color-on-dark-2` | `rgba(255,255,255,.72)` | Secondary text on the dark panel |
| `--color-line-dark` | `rgba(255,255,255,.16)` | Dividers on the dark panel |
| `--glow-lime` / `--glow-forest` | lime 45 % / forest 22 % | Radial glows behind portraits and the footer |

### Contrast (WCAG 2.1, measured)

| Pair | Ratio | Rule |
|---|---|---|
| ink / bg | 16.8 : 1 | Any size |
| ink-2 / bg | 6.6 : 1 | Any size |
| ink-3 / bg | 4.5 : 1 | Metadata only. **Not on sage** (4.1 : 1) |
| accent / bg | 7.7 : 1 | Any size |
| lime / dark | 11.4 : 1 | Any size |
| ink / lime | 11.6 : 1 | Badges |
| lime / bg | 1.4 : 1 | **Never as text** |

## Typography

Two families from Google Fonts: **Raleway** (variable, 200–800) and **Instrument Serif** (italic 400). No third family.

| Style | Family · weight | Size (mobile → desktop) | Line height · tracking | Use |
|---|---|---|---|---|
| Display | Raleway 500 | 40 → 84 px | 1.0 · −0.042em | Hero headline, centered, two lines |
| Display accent | Instrument Serif italic | 1.2em of display | 0.95 · −0.02em | Second hero line («empresas con personas.») |
| Footer display | Raleway 500 | 52 → 128 px | 0.95 · −0.047em | Contact headline |
| H2 | Raleway 500 | 34 → 56 px | 1.06 · −0.035em | Section title; accent word at 1.18em serif |
| H3 | Raleway 600 | 18 → 28 px | 1.25 · −0.015em | Cards, steps, stages |
| Eyebrow | Instrument Serif italic | 19 → 22 px | 1.2 | `NN / Section name` above every H2 |
| Lead | Raleway 400 | 17 → 20 px | 1.5 | Hero intro |
| Body | Raleway 400 | 17 px (profile 18) | 1.6 | Paragraphs |
| Stat | Raleway 300 | 30 → 40 px | 1.0 · −0.04em | Numbers |
| Label | Raleway 600 | 13 → 16 px | 1.0 | Buttons, menu, filters |
| Meta | Raleway 500 | 13 → 15 px | 1.3 | Years, credits |

Rules: body text never below 14 px; at most three lines of centered text; line length 50–75 characters; use `text-wrap: balance` on headings.

## Space, layout and shape

| Token | Value | Use |
|---|---|---|
| space-1 … space-9 | 4 · 8 · 12 · 16 · 24 · 32 · 48 · 64 · 128 | 4 px scale (Pen.Dev variables; CSS uses the literal values) |
| `--gutter` | `clamp(16px, 4.4vw, 64px)` | Side margin |
| `--max` | 1312 px | Content width |
| `--section` | `clamp(64px, 9vw, 128px)` | Space between sections |

| Radius | Value | Use |
|---|---|---|
| `--r-sm` | 14 px | Thumbnails |
| `--r-md` | 24 px | Case images, stages |
| `--r-lg` | `clamp(20px, 2.2vw, 32px)` | Panels |
| `--r-xl` | `clamp(28px, 3vw, 40px)` | Portrait, dark panel |
| `--pill` | 999 px | Buttons, menu, filters, chips |

**Breakpoints:** 1180 px hides menu numbers · 980 px is tablet (one column profile, two-column grids) · 760 px is mobile (dropdown menu, one column, stacked buttons).

**Surfaces:** page (`bg`, no shadow) · hero (full-bleed radial glows on `bg`, lime bottom-left, forest top-right, white top-center; reaches up behind the header) · card (`surface` + 1 px `line`, no shadow) · lime glow (`card` + radial lime, profile photo) · dark panel (`dark` + radial lime 20 %) · closing (`bg` + two radials at the bottom, contact only). Drop shadows appear only on the open mobile menu.

## Iconography

Lucide-style line icons drawn inline as SVG: stroke 2, round caps and joins, 18–22 px, `currentColor`. An icon always sits next to a word; an icon on its own (the menu button) carries an `aria-label`. Icons in use: arrow-right, arrow-down, arrow-up-right, download, mail, message-circle, menu, x, search, pen-tool, layers.

## Motion

| Kind | Spec | Where |
|---|---|---|
| Entrance | `translateY(28px) → 0`, 700 ms, staggered 110 ms | `.rise`, once, on scroll into view |
| Interface | 200–250 ms, `cubic-bezier(.2,.7,.2,1)` | Button hover (−2 px), header, menu, filters |
| Image | `scale(1.03)`, 500 ms | Case card hover |
| Reduced motion | Without `no-preference`, no entrance and no smooth scroll | Global |

Never animate text opacity; never move anything more than 28 px.

## Components

Each one is a reusable component on the *Sistema · Componentes* board.

| Component | Class in code | Rules |
|---|---|---|
| Hero | `.hero` | Tagline + two-line centered H1. Below it a 3-column grid: the cut-out portrait in the middle with no frame, faded at the bottom with a mask; status (top left), lead (top right), 9-case link with thumbnails (bottom left) and CTAs (bottom right). At 980 px and below it stacks centered: status, portrait, lead, CTAs, and the case link is hidden. |
| Primary button | `.btn.btn-solid` | One per zone. 56 px tall (46 in the header). Pill. |
| Secondary button | `.btn.btn-line` | Alternative action. 1 px ink border. |
| Header | `.top` | Sticky; gains `.scrolled` (translucent + blur) after 8 px. Logo · menu · CV + Escríbeme. |
| Menu option | `.top nav a` | Section number + label. The section in view gets `aria-current="true"` (ink fill). |
| Mobile menu | `.menu-btn` + `.top.open` | Below 760 px. Closes on Escape, outside click or link. Includes Escríbeme and CV. |
| Status pill | `.status` | Lime dot with forest ring. Once, in the hero. |
| Menu number | `.top nav a small` | `--color-ink-3`; on the active option `--color-on-dark-2`. No opacity tricks: they broke contrast. |
| Chip | `.chips li` | Non-interactive list (tools). |
| Filter | `.filters button` | `aria-pressed`. Track in `card`; the active filter is `surface`. Hidden without JS. |
| Section heading | `.eyebrow` + `.h2` | `NN / Name` + H2 with one `<em>` accent. On dark the accent is lime. |
| Stat | `.proof dl div` | Number + label up to two lines, in a band between hairlines, never in cards. |
| Case card | `.case` | Whole card is the link. Image without frame or shadow. Feature spans 8/12 and two rows. |
| Stage | `.stage` / `.stage.now` | Four in a row; the most recent is white with a lime ring and the «Reciente» badge. Becomes a list on mobile. |
| Process step | `.step` | Dark panel only. Lime number, icon on the right, `line-dark` dividers. Three steps. |

## Accessibility baseline

- Skip link to `#main`; landmarks: header, nav, main, footer.
- Visible focus: 3 px `--color-accent` outline, offset 3 px.
- Touch targets: buttons 46–56 px and mobile menu options 52 px. Desktop menu options and filters are 40 px: above the 24 px WCAG 2.2 AA minimum, below the 44 px AAA target.
- Decorative images use `alt=""`; work images describe the piece.
- Checked with axe-core 4.10 (WCAG 2 A/AA + best practices): 0 violations on the home page, November 2026.

## Changing the system

1. Change the token in `@layer tokens` (`sitio/index.html`). Case pages use `sitio/assets/css/caso.css` and `tema-verde.css`; keep them in step.
2. Update the matching Pen.Dev variable or component in `diseno/portafolio.pen`.
3. Update this file, including the contrast table if a color changed.

## Known gaps

- Case pages (`caso.css`) still use the older token names (`--ink-2`, `--plum`, `--blue`; the last two are recolored to green by `tema-verde.css`) instead of the semantic tokens above.
- The proposal screens in `portafolio.pen` are not built from the components yet. Their hero matches the site (centered portrait, no card); the bottom fade is drawn there as a gradient rectangle instead of a mask.
