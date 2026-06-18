#!/usr/bin/env bash

set -e

echo
echo "Initialising Broadcast Engineering Publishing Environment..."
echo

# Ensure output directory exists
mkdir -p /workspace/out

# -----------------------------------------------------------------------------
# Capture runtime environment details
# -----------------------------------------------------------------------------
HOSTNAME_SHORT="$(hostname)"
CURRENT_USER="$(whoami)"
WORKDIR="$(pwd)"

# -----------------------------------------------------------------------------
# System ready banner
# -----------------------------------------------------------------------------
echo "
╔══════════════════════════════════════════════════════════════╗
║  BROADCAST ENGINEERING POSTERS                               ║
║  Publishing Environment Online                                ║
╠══════════════════════════════════════════════════════════════╣
║  Host:      ${HOSTNAME_SHORT}                                 ║
║  User:      ${CURRENT_USER}                                   ║
║  Workspace: ${WORKDIR}                                        ║
║  Output:    ${BEF_OUTDIR:-/workspace/out}                     ║
║  Locale:    ${LANG}                                           ║
╠══════════════════════════════════════════════════════════════╣
║  Engine:    LuaLaTeX + latexmk                               ║
║  Mode:      Technical Reference Publishing                   ║
║  Status:    Ready                                              ║
╠══════════════════════════════════════════════════════════════╣
║                                                              ║
║  “This is not a simulation.”                                  ║
║  “This is a working engineering environment.”               ║
║                                                              ║
╚══════════════════════════════════════════════════════════════╝
"

echo
echo "Environment initialisation complete."
echo
