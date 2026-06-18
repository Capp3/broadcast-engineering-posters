# Broadcast Engineering Posters

> *"Knowledge shared is knowledge multiplied."*

**Broadcast Engineering Posters** is an open-source collection of professionally typeset educational posters designed for broadcast engineers, technicians, apprentices, students and anyone with a passion for understanding the technology behind television, radio and live production.

The project exists to transform workshops, engineering spaces, machine rooms, technical galleries and classrooms into places of continuous learning. Rather than replacing formal training, these posters reinforce the core principles of engineering through repeated exposure, helping to build confidence, encourage curiosity and develop the intuition that comes with experience.

Every poster is designed to communicate a single topic using clean diagrams, concise reference material and practical engineering knowledge. They are intended to be glanced at dozens of times a day, allowing information to become familiar almost by osmosis.

---

# Why?

Engineering is built upon thousands of small pieces of knowledge.

No individual concept is particularly difficult, but together they form the foundation upon which experience is built.

The resistor colour code.

Ohm's Law.

Signal levels.

Timecode.

Connectors.

Power.

Networking.

Most engineers learn these gradually through repetition. This project simply accelerates that process by surrounding engineers with useful, accurate reference material every day.

The goal is simple:

> **Create the kind of engineering environment that inspires people to learn simply by being in it.**

---

# Project Philosophy

Every poster should be:

* Technically accurate.
* Visually engaging.
* Readable from several metres away.
* Understandable in under thirty seconds.
* Focused on one primary concept.
* Useful to both apprentices and experienced engineers.
* Suitable for display in real engineering environments.

This project deliberately values clarity over completeness.

A poster is not a textbook.

Its purpose is to spark curiosity, reinforce knowledge and encourage further learning.

---

# The Series

The repository contains a number of poster series, beginning with:

## Broadcast Engineering Fundamentals (BEF)

The **Broadcast Engineering Fundamentals** series covers the core knowledge every broadcast engineer should become familiar with.

Each poster follows a common visual identity and includes:

* Standardised page layout
* Dual resistor colour code reference columns
* Document control block
* Document number
* Revision number
* Primary educational graphic
* Supporting quick-reference material
* Engineering-themed dad joke
* Optional QR code linking to additional learning resources

Consistency builds familiarity.

Familiarity builds confidence.

---

# Project Goals

This project aims to:

* Create publication-quality educational posters.
* Build reusable LaTeX templates for future content.
* Produce diagrams using TikZ wherever practical.
* Encourage passive learning through repeated exposure.
* Create freely available engineering resources for the wider broadcast community.
* Support apprentices, students and experienced engineers alike.
* Encourage collaboration and knowledge sharing across the industry.

---

# Repository Structure

```text
.
├── README.md
├── LICENSE
├── bef.cls                      # Custom document class
├── bef.sty                      # Shared styles and reusable commands
│
├── assets/
│   ├── graphics/
│   ├── tikz/
│   ├── fonts/
│   ├── logos/
│   └── icons/
│
├── posters/
│   ├── BEF-001-OhmsLaw.tex
│   ├── BEF-002-...
│   └── ...
│
├── examples/
│
└── documentation/
```

---

# Document Numbering

Every poster receives a permanent document identifier.

Examples:

| Document | Topic                |
| -------- | -------------------- |
| BEF-001  | Ohm's Law            |
| BEF-002  | Signal Levels        |
| BEF-003  | Broadcast Connectors |
| BEF-004  | Fibre Optics         |
| BEF-005  | Timecode             |

Document numbers are never reused.

Revisions should follow semantic versioning where appropriate.

---

# Poster Standards

Every poster should include:

* Document title
* Series identifier
* Document number
* Revision number
* Primary educational graphic
* Supporting reference material
* Engineering dad joke
* Document control information
* Optional QR code

Wherever practical, graphics should be created using TikZ to ensure:

* Infinite scalability
* Consistent appearance
* Complete editability
* Long-term maintainability

---

# Design Principles

The visual style of the project is intentionally restrained.

Design should feel more like a professional engineering reference than a marketing poster.

Guiding principles include:

* Clean typography
* High contrast
* Minimal decoration
* Consistent spacing
* Vector graphics throughout
* Colour used only where it conveys information

If a graphic does not help teach the topic, it probably doesn't belong.

---

# Engineering Humour

Every poster concludes with an engineering-themed dad joke.

This isn't simply for amusement.

A small moment of humour encourages people to read the footer, increasing repeated engagement with the poster and reinforcing the surrounding technical information.

There is only one rule:

> **The joke must always be technically correct.**

Bad jokes are encouraged.

Bad engineering is not.

---

# The BEF Engineering Principles

These principles define the character of the project and should guide every contribution.

## I — Teach visually before teaching verbally.

A diagram remembered is often more valuable than a paragraph forgotten.

---

## II — One poster. One lesson.

Teach one idea well.

Do not attempt to explain an entire subject on a single sheet of paper.

---

## III — Accuracy is non-negotiable.

Every fact, diagram and explanation should be technically correct.

If it isn't correct, it doesn't belong.

---

## IV — Every element must have a purpose.

Avoid decoration for the sake of decoration.

Everything on the page should contribute to learning.

---

## V — Assume the reader has only five seconds.

Design for the engineer walking past, not the engineer sitting down.

The most important information should be immediately obvious.

---

## VI — Consistency builds familiarity.

A common layout allows readers to focus on new information rather than learning a new design every time.

---

## VII — Prefer graphics over paragraphs.

Engineers should understand the concept before they need to read the explanation.

---

## VIII — Everything should remain editable.

Whenever practical, diagrams should be created using TikZ.

Future contributors should never need to recreate artwork from scratch.

---

## IX — Respect the printed page.

Every poster should remain clear, legible and useful when printed on standard office equipment.

Good design should survive years on a workshop wall.

---

## X — Humour has a purpose.

Every poster should include a family-friendly engineering dad joke.

The joke should always be topical.

The joke should always be technically correct.

Groans are considered a measure of success.

---

## XI — Leave the reader knowing one more thing.

Every poster should teach at least one fact, relationship or concept that the reader did not know before.

If it achieves that, it has succeeded.

---

## XII — Leave the project better than you found it.

Improve the diagrams.

Improve the typography.

Improve the code.

Improve the explanations.

Improve the engineering.

---

# Building the Posters

The project is intended to be compiled using **LuaLaTeX**.

The template makes extensive use of modern LaTeX packages including:

* `fontspec`
* `TikZ / PGF`
* `geometry`
* `xcolor`
* `tcolorbox`
* `siunitx`
* `hyperref`
* `qrcode`

Future reusable components will be added as the project grows.

---

# Contributing

Contributions are warmly welcomed.

Before submitting a pull request, please ask yourself:

* Is the information technically correct?
* Is the layout clear?
* Would an apprentice understand the main idea?
* Would an experienced engineer still find it useful?
* Does every graphic serve a purpose?
* Does it follow the BEF Engineering Principles?
* Is the dad joke terrible enough?

If the answer is "yes", you're probably on the right track.

---

# Planned Topics

The series is intended to expand over time and may include:

### Electrical Fundamentals

* Ohm's Law
* Power Relationships
* Resistor Colour Code
* SI Prefixes
* Passive Components

### Broadcast Video

* SDI Fundamentals
* Frame Rates
* Timecode
* Synchronisation
* Colour Spaces
* Waveform Monitors
* Vectorscopes

### Audio

* Gain Structure
* Signal Levels
* Balanced Audio
* Audio Connectors
* Loudness

### Networking

* IP Addressing
* Subnetting
* VLANs
* PoE
* DHCP
* DNS

### Infrastructure

* Fibre Optics
* Broadcast Connectors
* Test Equipment
* Oscilloscopes
* Electrical Safety
* Earthing & Bonding

---

# Licence

Unless otherwise stated, all original diagrams, layouts, TikZ source and documentation are released under the MIT License.

You are encouraged to:

* Use them.
* Print them.
* Improve them.
* Share them.
* Teach with them.

Knowledge grows when it is shared.

---

# Acknowledgements

This project is inspired by the engineers who take the time to mentor others, answer questions, share their experience and help the next generation develop the confidence to solve problems for themselves.

If these posters help even one apprentice become a better engineer, then the project has achieved its goal.

---

> **"A good engineer solves problems. A great engineer helps others avoid them."**

---

Document ID : BEP-README
Revision    : 0.1.0
Status      : Active
Maintainer  : Community
License     : MIT