FROM pandoc/latex:latest-ubuntu

# -----------------------------------------------------------------------------
# Broadcast Engineering Publishing Environment
# -----------------------------------------------------------------------------

ENV DEBIAN_FRONTEND=noninteractive

# -----------------------------------------------------------------------------
# Core utilities
# -----------------------------------------------------------------------------
RUN apt-get update && apt-get install -y \
    git \
    make \
    curl \
    wget \
    bash \
    bash-completion \
    ca-certificates \
    unzip \
    xz-utils \
    file \
    && rm -rf /var/lib/apt/lists/*

# -----------------------------------------------------------------------------
# Graphics + PDF tooling
# -----------------------------------------------------------------------------
RUN apt-get update && apt-get install -y \
    imagemagick \
    ghostscript \
    poppler-utils \
    inkscape \
    pdf2svg \
    fontconfig \
    && rm -rf /var/lib/apt/lists/*

# -----------------------------------------------------------------------------
# LaTeX extras
# -----------------------------------------------------------------------------
RUN apt-get update && apt-get install -y \
    latexmk \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-science \
    texlive-bibtex-extra \
    && rm -rf /var/lib/apt/lists/*

# -----------------------------------------------------------------------------
# Locale
# -----------------------------------------------------------------------------
RUN apt-get update && apt-get install -y locales \
    && locale-gen en_GB.UTF-8

ENV LANG=en_GB.UTF-8
ENV LC_ALL=en_GB.UTF-8

# -----------------------------------------------------------------------------
# Workspace + output convention
# -----------------------------------------------------------------------------
WORKDIR /workspace

# >>> STANDARD OUTPUT DIRECTORY <<<
ENV BEF_OUTDIR=/workspace/out

# Ensure output directory always exists
RUN mkdir -p /workspace/out

# -----------------------------------------------------------------------------
# TeX environment stability
# -----------------------------------------------------------------------------
ENV TEXMFHOME=/root/.texlive
ENV TEXMFVAR=/root/.texlive/texmf-var
ENV TEXMFCONFIG=/root/.texlive/texmf-config

# -----------------------------------------------------------------------------
# Make latexmk respect ./out by default
# -----------------------------------------------------------------------------
RUN echo '% Output directory for all builds' > /root/.latexmkrc && \
    echo '$out_dir = "out";' >> /root/.latexmkrc && \
    echo '$pdf_mode = 4;' >> /root/.latexmkrc

# -----------------------------------------------------------------------------
# Pandoc default output behaviour helper
# -----------------------------------------------------------------------------
RUN echo '#!/bin/bash\n\
if [ -z "$1" ]; then\n\
  echo "Usage: pandoc-out input.md output.pdf"\n\
  exit 1\n\
fi\n\
mkdir -p /workspace/out\n\
pandoc "$1" -o "/workspace/out/$2"\n' \
> /usr/local/bin/pandoc-out && \
chmod +x /usr/local/bin/pandoc-out

# -----------------------------------------------------------------------------
# Shell behaviour
# -----------------------------------------------------------------------------
SHELL ["/bin/bash", "-c"]

RUN echo "Broadcast Engineering Publishing Environment ready."
