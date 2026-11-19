# Design system — David Londoño R. portfolio

Version 2.0 · November 2026

- **Brand source of truth:** `marca/manual-de-marca.html` (PDF in `marca/manual-de-marca.pdf`). This file translates it into code rules.
- **Source of truth for values:** the `@layer tokens` block in `sitio/index.html` and the `:root` block in `sitio/assets/css/caso.css`. Both carry the same values. If this file and the CSS disagree, the CSS wins and this file gets fixed.
- **UI copy** is Spanish (es-CO). Code, comments and this document are English.

## Principles

1. **Craft before ornament.** Hierarchy comes from size, weight and space, not from effects. No shadows, no glass, no decorative gradients.
2. **One gesture: the facet.** Images lose their top-left corner at 25°, the angle of the mark's top edge. It is the only graphic device.
3. **Plum is scarce.** At most two plum elements per screen: the accent word of the headline and one primary button.
4. **The gradient lives only in the mark.** Plum → cobalt never appears as a background, button, text or border.
5. **Real work first.** Real portrait, real pieces. No stock photos, no generated people.

## Color

### Primitives

| Token | Value | Name | Role |
|---|---|---|---|
| `--ciruela` | `#890965` | Ciruela | Action and emphasis |
| `--ciruela-800` | `#590642` | Ciruela 800 | Primary button hover |
| `--ciruela-50` | `#F6EBF3` | Ciruela 50 | Status ring, tints |
| `--cobalto` | `#122CA2` | Cobalto | Information, focus ring |
| `--orquidea` | `#EBA9D6` | Orquídea | Plum's stand-in on dark |
| `--cielo` | `#A7B5F7` | Cielo | Cobalt's stand-in on dark (reserved) |
| `--piedra` | `#D8D0D0` | Piedra | Portrait discs |
| `--papel` | `#F4F2F3` | Papel | Page background |
| `--well` | `#EAE5E7` | — | Image wells, cards, filter track |
| `--noche` | `#17121A` | Noche | Text, dark panel, solid buttons |
| `--ink-600` | `#56515A` | Tinta 2 | Body copy |
| `--ink-400` | `#6E6872` | Tinta 3 | Metadata only |

### Semantic tokens (home page)

| Token | Maps to | Use |
|---|---|---|
| `--color-bg` | papel | Page |
| `--color-surface` | white | Chips, status pill, active filter, current stage |
| `--color-card` | well | Image wells, stages, profile panel |
| `--color-disc` | piedra | Disc behind the portrait |
| `--color-ink` / `-2` / `-3` | noche / ink-600 / ink-400 | Text levels |
| `--color-accent` | ciruela | Accent word, primary button, current stage ring, badge |
| `--color-accent-on-dark` | orquidea | Accent word and numbers on the dark panel |
| `--color-info` | cobalto | Focus ring |
| `--color-dark` | noche | Process panel |

Case pages use the short names (`--bg`, `--card`, `--ink-2`, `--accent`, `--info`) with the same values.

### Contrast (WCAG 2.1)

| Pair | Ratio | Rule |
|---|---|---|
| noche / papel | 16.6 : 1 | Any size |
| ink-600 / papel | 6.9 : 1 | Body |
| ink-400 / papel | 4.9 : 1 | Metadata only. **Not on well or piedra** |
| ciruela / papel | 8.2 : 1 | Any size |
| white / ciruela | 9.2 : 1 | Primary button |
| orquidea / noche | 9.8 : 1 | Accent on dark |
| ciruela / noche | 2.0 : 1 | **Never as text** |

## Typography

**Raleway** (400–700, the logo's typeface) and **Fragment Mono** (400). No third family; Instrument Serif was removed in v2.0. Raleway always runs with `font-feature-settings:"lnum"`.

| Style | Family · weight | Size | Line · tracking | Use |
|---|---|---|---|---|
| Display | Raleway 600 | 40 → 88 px | 0.98 · −0.042em | Hero headline |
| Footer display | Raleway 600 | 48 → 120 px | 0.95 · −0.047em | Contact headline |
| H2 | Raleway 600 | 30 → 48 px | 1.06 · −0.03em | Section titles |
| H3 | Raleway 600 | 18 → 30 px | 1.1–1.25 | Cards, steps, stages |
| Lead | Raleway 400 | 17 → 20 px | 1.5 | Hero intro |
| Body | Raleway 400 | 17 px | 1.6 | Paragraphs |
| Label | Raleway 600 | 14 → 16 px | 1.0 | Buttons, menu, filters |
| Technical | Fragment Mono 400 | 11 → 13 px | 1.4 | Eyebrows `NN / Section`, years, menu numbers, meta labels |

Accent: one word or short phrase per headline in `<em>`, rendered upright in `--color-accent` (orquídea on dark). No italics, no all-caps eyebrows.

## Space, layout and shape

| Token | Value | Use |
|---|---|---|
| space scale | 4 · 8 · 12 · 16 · 24 · 32 · 48 · 64 · 96 · 128 | Literal values in CSS |
| `--gutter` | `clamp(16px, 4.4vw, 64px)` | Side margin |
| `--max` | 1312 px | Content width |
| `--section` | `clamp(64px, 9vw, 128px)` | Between sections |

| Shape | Value | Use |
|---|---|---|
| Facet | `--fx: clamp(40px,6vw,96px)`, `--fy: --fx × 0.466` | Case images, stage thumbs, profile panel, case covers, next-case image |
| `--r-panel` | 20 px | Dark panel, stages, frames, mobile menu |
| `--r-sm` / `--r-img` | 12 px | Images inside case frames |
| `--pill` | 999 px | Buttons, menu, filters, chips |

```css
clip-path: polygon(0 var(--fy), var(--fx) 0, 100% 0, 100% 100%, 0 100%);
```

**Breakpoints:** 1180 px hides menu numbers · 980 px tablet · 760 px mobile.

**Surfaces:** no shadows anywhere except the open mobile menu. The hero has no glows: the portrait stands on a Piedra disc. The header turns solid Papel with a hairline after 8 px of scroll.

## Logo

- Header and footer use `assets/logo/logo.svg` (color mark + Noche wordmark), 34 px and 30 px tall.
- Tagline uses `assets/logo/icono.svg`. Favicon is `assets/logo/icono-disco.svg`.
- `logo-negro.svg` and `icono-negro.svg` remain only for the CVs in `hoja-de-vida/`.
- Clear space: one cap height of the «D» (≈ 29 % of the logo height). Minimum: 140 px wide, mark alone 28 px tall.

## Iconography

Inline SVG on a 24 px grid: stroke 1.75, `stroke-linejoin="miter"`, butt caps, `currentColor`, no fill. 18–22 px, always next to a word. Set: arrow-right, arrow-down, arrow-up-right (inside the primary button's disc), download, search, draw, layers, menu, x, message.

## Components

| Component | Class | Rules |
|---|---|---|
| Primary button | `.btn.btn-pri` | Plum pill, label then the arrow in a white 40 px disc. One per zone (hero, footer, case footer). |
| Solid button | `.btn.btn-solid` | Noche pill. Header «Escríbeme». |
| Line button | `.btn.btn-line` | 1 px ink border. Secondary actions. |
| Header | `.top` | Sticky; `.scrolled` = Papel + hairline. Color logo · menu · CV + Escríbeme. |
| Hero | `.hero` | Centered two-line H1, the second line in plum. Medium-shot portrait on the Piedra disc, bottom 10 % fades. |
| Status pill | `.status` | Plum dot with a Ciruela 50 ring. |
| Case card | `.case` | Whole card is the link; faceted image; title turns plum on hover; year in mono. |
| Process panel | `.panel` | Noche, 20 px radius, orquídea accent and mono step numbers. |
| Stage | `.stage` / `.stage.now` | Well card; current stage white with a 2 px plum ring and plum «Reciente» badge. |
| Profile photo | `.photo` | Faceted well, Piedra disc, portrait seated on the bottom edge. |
| Case meta | `.meta` (caso.css) | Four columns between hairlines, mono labels. |
| Case reasons | `.points` (caso.css) | List with a 2 px ink top rule, mono plum number. No cards. |

## Motion

| Kind | Spec |
|---|---|
| Entrance | `translateY(28px) → 0`, 700 ms, staggered |
| Interface | 200–250 ms, `cubic-bezier(.2,.7,.2,1)`, buttons lift 2 px |
| Image | `scale(1.03)`, 500 ms on case hover |

Everything respects `prefers-reduced-motion`. Text is never faded.

## Accessibility baseline

Skip link, landmarks, visible 3 px Cobalto focus ring, 46–56 px touch targets (40 px for desktop menu and filters), decorative images with `alt=""`.

## Changing the system

1. Change the token in `sitio/index.html` and `sitio/assets/css/caso.css`.
2. Case markup comes from `herramientas/generar-casos.pl`; edit the template there and run it, never the generated HTML.
3. Update `marca/manual-de-marca.html`, re-export its PDF, and update this file (contrast table included).

## Known gaps

- `diseno/portafolio.pen` still holds the v1 green variables; Pencil was not running during the v2.0 migration.
- The CVs in `hoja-de-vida/` keep the v1 look and the black-and-white portrait.
- `assets/img/david-color.png` is a 1.1 MB PNG; a WebP export would cut it to about 200 KB.
