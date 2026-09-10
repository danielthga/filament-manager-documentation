# Filament Manager Documentation

This repository contains the documentation for the Filament Manager project.

## Documents

- Developer Manual
- User Manual

Both manuals are written in LaTeX and use the THGA database course style.

## Requirements

On Debian-based systems:

```bash
sudo apt update
sudo apt install latexmk texlive-full
```

## Documentation build

The documentation is generated using LaTeX and GNU Make.

### Build the documentation

To generate both manuals, run:

```bash
make
```

The generated PDF files are placed in the out/ directory:

out/developer-manual.pdf
out/user-manual.pdf
