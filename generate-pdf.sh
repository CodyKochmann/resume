#!/bin/bash
# this file runs the code needed to convert README.md to resume.pdf

set -euxo pipefail

export TARGET='README.md'
export OUTPUT_FILE='resume.pdf'
export ENGINE='xelatex'
export FONT='Courier Prime Sans.otf'
export FONT='Aerial.ttf'
export MARGIN='0.8in'

test -f "${TARGET}"

pandoc "$TARGET" \
	-V "geometry:margin=${MARGIN}" \
	--wrap=preserve \
	-f markdown \
	-o "${OUTPUT_FILE}"


test -f "${OUTPUT_FILE}"

#	--pdf-engine="${ENGINE}" \
#	-V mainfont="${FONT}" \
#	-V sansfont="${FONT}" \
#	-V monofont="${FONT}" \
