#!/bin/bash
# this file runs the code needed to convert README.md to resume.pdf

set -euxo pipefail

export TARGET='README.md'
export OUTPUT_FILE='resume.pdf'

test -f "$TARGET"

pandoc "$TARGET" --wrap=preserve -f markdown -o "$OUTPUT_FILE" -V geometry:margin=1.25in


test -f "$OUTPUT_FILE"
