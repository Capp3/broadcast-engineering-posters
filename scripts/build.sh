#!/usr/bin/env bash
# Broadcast Engineering Posters — build helper
# Usage: ./scripts/build.sh [path/to/document.tex]

if [ -z "${BASH_VERSION:-}" ]; then
  exec bash "$0" "$@"
fi

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUTDIR="${BEF_OUTDIR:-${ROOT}/out}"
AUXDIR="${BEF_AUXDIR:-${ROOT}/.build}"
SOURCE="${1:-${ROOT}/examples/framework-test.tex}"

mkdir -p "${OUTDIR}" "${AUXDIR}"

SOURCE_DIR="$(dirname "${SOURCE}")"
SOURCE_BASE="$(basename "${SOURCE}")"

cd "${SOURCE_DIR}"
export TEXINPUTS="${ROOT}:"
export TEXMFDIST="/usr/share/texlive/texmf-dist:/opt/texlive/texdir/texmf-dist"
export TEXMFHOME=""
export TEXMFVAR="/opt/texlive/texdir/texmf-var"
export TEXMFCONFIG="/opt/texlive/texdir/texmf-config"

if latexmk -norc -r "${ROOT}/.latexmkrc" -g -lualatex -interaction=nonstopmode -synctex=1 -outdir="${OUTDIR}" -auxdir="${AUXDIR}" "${SOURCE_BASE}" > /tmp/bef-build.log 2>&1; then
  echo "Build succeeded: ${OUTDIR}/${SOURCE_BASE%.tex}.pdf"
else
  EXIT=$?
  echo "Build failed (exit ${EXIT}). Last errors:"
  grep '^!' /tmp/bef-build.log | tail -5 || true
  tail -30 /tmp/bef-build.log
  exit "${EXIT}"
fi
