# Broadcast Engineering Posters Framework
## Development Roadmap

> "Build the framework first. Build the posters second."

---

# Current Status

The framework successfully compiles and produces a printable document. The focus now shifts from proving the architecture to refining the visual design and building reusable framework components.

---

# Milestone 1 — Stabilise the Framework

**Goal:** Ensure the framework is technically robust before investing in aesthetics.

## 1.1 Fix Title Rendering
**Priority:** Critical

- [ ] Remove `\MakeUppercase`
- [ ] Verify mixed-case titles render correctly
- [ ] Test long titles
- [ ] Ensure Unicode compatibility

**Expected Result**

```
Framework Test
```

instead of

```
uppercaseFramework...
```

---

## 1.2 Automatic Document Number Formatting
**Priority:** High

Implement automatic formatting so authors only specify an integer.

Examples:

```
0   → BEF-000
1   → BEF-001
7   → BEF-007
12  → BEF-012
103 → BEF-103
```

---

## 1.3 Improve Framework Diagnostics

Display useful build information during compilation.

Example:

```
BEF Framework v0.1.0

Document : BEF-001
Title    : Ohm's Law
Revision : 1.0.0
```

---

# Milestone 2 — Replace Box-Based Layout

**Goal:** Move away from `tcolorbox` and towards a publication-quality layout.

---

## 2.1 Remove `tcolorbox`

Replace decorative boxes with:

- TikZ overlays
- Horizontal rules
- Precise positioning

Benefits:

- Cleaner appearance
- Greater layout control
- Easier maintenance
- Professional engineering-document aesthetic

---

## 2.2 Redesign Header

Current:

```
+---------------------------+
|                           |
|        Header             |
|                           |
+---------------------------+
```

Target:

```
──────────────────────────────────────────────────────────────

BEF-001         Broadcast Engineering Fundamentals     Rev 1.0

                    Framework Test

              Visual Layout Validation

──────────────────────────────────────────────────────────────
```

---

## 2.3 Redesign Footer

Replace boxed footer with:

```
──────────────────────────────────────────────────────────────

© Broadcast Engineering Posters

Resistance is futile...

Framework v0.2
```

---

# Milestone 3 — Build the Page Grid

**Goal:** Create a reusable layout engine for every poster.

---

## 3.1 Layout Constants

Define reusable dimensions.

Examples:

```latex
\newlength{\BEFHeaderHeight}
\newlength{\BEFContentTop}
\newlength{\BEFContentBottom}
\newlength{\BEFFooterHeight}
```

Avoid magic numbers throughout the framework.

---

## 3.2 Define a Content Area

```
+--------------------------------------------------+

Header

----------------------------------------------------

Content Area

----------------------------------------------------

Footer

+--------------------------------------------------+
```

Poster authors should simply populate the content area.

---

## 3.3 Add Layout Debug Mode

Provide a framework option to visualise page regions.

Example:

```latex
\BEFDebugLayout
```

Should display:

- Page margins
- Header boundary
- Content boundary
- Footer boundary
- Resistor column boundary

---

# Milestone 4 — Resistor Columns

**Goal:** Establish the visual identity of the framework.

---

## 4.1 Full-Page Overlay

Draw resistor columns directly onto the page using TikZ.

Do **not** allow them to participate in normal document flow.

---

## 4.2 Automatic Scaling

Columns should automatically adapt to:

- A4
- A3
- Portrait
- Landscape

---

## 4.3 Improve Typography

Ensure:

- Perfect centring
- Consistent spacing
- High contrast
- Professional appearance

---

## 4.4 Future Enhancement

Potential optional additions:

- Colour names
- Multiplier colours
- Tolerance bands
- Temperature coefficient bands

Not required for v1.0.

---

# Milestone 5 — Header Refinement

Improve visual hierarchy.

Typography should become the primary design element.

Hierarchy:

1. Document Number
2. Series Name
3. Poster Title
4. Subtitle
5. Revision

No decorative graphics.

---

# Milestone 6 — Footer Refinement

The footer should remain understated.

Suggested content:

- Copyright
- Dad joke
- Framework version

Avoid expanding the footer vertically.

---

# Milestone 7 — Content API

Introduce a dedicated content environment.

Example:

```latex
\begin{BEFContent}

...

\end{BEFContent}
```

This provides future flexibility for:

- Automatic positioning
- Background graphics
- Multi-column layouts
- Alternative page sizes

---

# Milestone 8 — First Production Poster

Create:

**BEF-001 – Ohm's Law**

Contents:

- Ohm's Law wheel
- Power relationships
- SI prefixes
- Permanent resistor columns
- QR code
- Engineering dad joke

---

# Milestone 9 — Framework Polish

Complete quality-of-life improvements.

Examples:

- PDF metadata
- Git version stamping
- Build timestamps
- QR code generation
- Hyperlinks
- PDF bookmarks
- GitHub Actions

---

# Repository Organisation

```
.
├── assets/
├── documentation/
├── examples/
├── layout/
├── out/
├── posters/
├── styles/
├── tests/
├── tikz/
├── tools/
│
├── bef.cls
├── bef.sty
├── Dockerfile
├── README.md
└── LICENSE
```

---

# Long-Term Vision

The goal is **not** simply to create attractive posters.

The objective is to build an open-source technical publishing framework capable of producing:

- Engineering reference posters
- Workshop wall charts
- Quick-reference cards
- Technical bulletins
- Training handouts
- Laboratory reference sheets

Every publication should share a common visual language, requiring authors to focus on technical content rather than page design.

---

> **Framework Principle #1**
>
> *The framework should make creating a new engineering poster feel like writing content—not designing a page.*
