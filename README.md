# ASTRE -- Shared-memory multiprocessors architecture

This project uses `make` for every possible tasks.
The root Makefile loads variables from the `.env` file.
This is an easy way to override every variable defined with `?=`.

## PDF

### Install latex

    sudo apt install texlive latexmk texlive-lang-french texlive-latex-extra cm-super

### Render pdf

    make pdf
