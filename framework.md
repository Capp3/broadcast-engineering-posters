# Broadcast Engineering Posters Framework

## Architecture & Development Plan

**Document ID:** BEP-DESIGN-001
**Revision:** 0.1.0 (Draft)
**Status:** Planning

---

# Purpose

This document defines the architecture of the Broadcast Engineering Posters (BEP) framework.

Rather than creating individual posters as standalone LaTeX documents, the project will provide a reusable publishing framework that allows new posters to be produced with minimal boilerplate while maintaining a consistent visual identity across the entire series.

The framework should favour modularity, maintainability and reproducibility over convenience.

---

# Guiding Principles

The framework should be:

* Modular
* Reusable
* Self-documenting
* Fully vector-based wherever practical
* Easy to extend
* Easy to maintain
* Suitable for long-term growth

A contributor should never need to duplicate code from one poster to create another.

---

# Overall Architecture

```
┌─────────────────────────────┐
│ Poster Source (.tex)        │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│ bef.cls                     │
│ Document Class              │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│ bef.sty                     │
│ Shared Framework            │
└──────┬───────────┬──────────┘
       │           │
       ▼           ▼
 Styles          Components
       │           │
       ▼           ▼
 TikZ Modules   Utility Modules
```

---

# Responsibilities

## `bef.cls`

The document class should define **what** a Broadcast Engineering Poster is.

Responsibilities include:

* Base document class
* Page size selection
* Default font size
* Loading the framework package
* Metadata definitions
* User-facing document commands

The class should contain very little layout logic.

---

## `bef.sty`

The package defines **how** a poster looks.

Responsibilities include:

* Colour palette
* Typography
* Page geometry
* Header generation
* Footer generation
* Document control blocks
* Common TikZ styles
* Shared helper commands
* QR code support
* Resistor column integration

---

# Proposed Repository Layout

```
.
├── README.md
├── LICENSE
│
├── bef.cls
├── bef.sty
│
├── styles/
│   ├── colours.tex
│   ├── fonts.tex
│   ├── geometry.tex
│   ├── typography.tex
│   └── page-layout.tex
│
├── tikz/
│   ├── resistor-columns.tex
│   ├── ohms-law-wheel.tex
│   ├── power-triangle.tex
│   ├── document-control.tex
│   ├── qr-block.tex
│   └── title-banner.tex
│
├── components/
│   ├── footer.tex
│   ├── header.tex
│   ├── metadata.tex
│   ├── legends.tex
│   └── revision-table.tex
│
├── assets/
│   ├── graphics/
│   ├── logos/
│   ├── fonts/
│   └── icons/
│
├── posters/
│   ├── BEF-001-OhmsLaw.tex
│   ├── BEF-002-...
│   └── ...
│
├── documentation/
└── examples/
```

---

# Metadata Model

Every poster should define only its metadata.

Example:

```latex
\documentclass{bef}

\documentnumber{1}

\revision{1.0.0}

\title{Ohm's Law}

\subtitle{Fundamental Electrical Relationships}

\series{Broadcast Engineering Fundamentals}

\posterjoke{Resistance is futile... unless measured in ohms.}

\qrlink{https://example.com}

\begin{document}

\makeposter

\end{document}
```

The framework should generate all document control information automatically.

---

# Layout Engine

The framework should reserve fixed regions of the page for reusable elements.

```
+-----------------------------------------------------------+
|                       Header                              |
+-----------------------------------------------------------+
|█                                                       █|
|█                                                       █|
|█          Primary Educational Content                  █|
|█                                                       █|
|█                                                       █|
+-----------------------------------------------------------+
|                Supporting Information                    |
+-----------------------------------------------------------+
|                      Footer                              |
+-----------------------------------------------------------+
```

The resistor colour code columns should be permanently integrated into the left and right page margins.

Poster authors should not need to think about them.

---

# Component Library

The framework should provide reusable components.

Examples include:

* Resistor colour code
* Ohm's Law wheel
* Power triangle
* SI prefix chart
* QR code block
* Document control panel
* Revision table
* Connector diagrams
* Electrical symbols
* Signal flow diagrams

Each component should exist as an independent module.

---

# Styling

All styling should originate from shared files.

Examples:

```
styles/
    colours.tex
    fonts.tex
    geometry.tex
```

No poster should define its own colours or page geometry.

Consistency is a primary design goal.

---

# Numbering

Document identifiers should be generated automatically.

```
\documentnumber{1}
```

should render as

```
BEF-001
```

Zero padding should be automatic.

Document identifiers should never be typed manually.

---

# Future Extensibility

The architecture should allow future support for:

* A3 posters
* Landscape orientation
* Fold-out reference sheets
* Quick reference cards
* Multi-page booklets
* Training manuals
* Digital signage versions

These should reuse the same framework wherever possible.

---

# Build System

The project standardises on:

* LuaLaTeX
* latexmk
* TikZ
* Pandoc

Generated files should always be written to:

```
/<workspace>/out
```

The build process should be deterministic and reproducible.

---

# Development Roadmap

## Phase 1 — Framework Foundation

* Create `bef.cls`
* Create `bef.sty`
* Define metadata model
* Configure page geometry
* Create title banner
* Create footer

---

## Phase 2 — Core Components

* Resistor colour code
* Document control block
* QR code block
* Revision panel
* Standard footer
* Engineering joke system

---

## Phase 3 — Educational Graphics

* Ohm's Law wheel
* Power triangle
* SI prefixes
* Metric conversions
* Basic electrical symbols

---

## Phase 4 — Advanced Components

* SDI reference diagrams
* Fibre optic reference
* Broadcast connectors
* Balanced audio
* Network reference
* Colour space diagrams

---

## Phase 5 — Publishing Enhancements

* GitHub Actions PDF builds
* Automatic PDF releases
* Build metadata
* Version stamping
* Printable poster catalogue

---

# Design Philosophy

The framework should make creating a new poster feel like writing content, not designing a page.

Every common visual element should be reusable.

Every repeated calculation should be automated.

Every poster should immediately look like part of the same family.

The goal is not simply to produce attractive posters.

The goal is to build a publishing system that makes creating excellent engineering education resources straightforward, consistent and enjoyable.

---

> **"Good frameworks disappear into the background. Good engineering education does not."**
