# LaTeX Resume Template (MAANG-Ready)

[![Build Resume](../../actions/workflows/latex.yml/badge.svg)](../../actions)
[![Overleaf](https://img.shields.io/badge/Edit%20in-Overleaf-47A141?logo=overleaf)](https://www.overleaf.com/docs)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Download PDF](../../releases/latest/download/resume.pdf)](../../releases/latest/download/resume.pdf)

A clean and ATS-friendly LaTeX resume template optimized for software engineering roles (FAANG/MAANG, startups, and beyond).  


## 🚀 Features
- Minimal, single-page design tailored for recruiters.
- Easy customization (Education, Experience, Projects, Skills).
- ATS-compatible (avoids graphics-heavy layouts).
- Auto PDF build via GitHub Actions.
- Works with Overleaf and local LaTeX distributions.

## 📂 Structure
- `main.tex` → Main template file.
- `resume.cls` → Main class file with all the formatting.
- `resume.pdf` → Example compiled output.
- `.github/workflows/latex.yml` → Auto-build PDF on push.

## 🛠 Usage

### Compile Locally
```bash
pdflatex resume.tex
