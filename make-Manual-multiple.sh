#!/bin/sh

set -x
clear
#makeindex -s Slic3r-Manual.gst -o Slic3r-Manual.gls Slic3r-Manual.glo && \
#makeindex -s Slic3r-Manual.ist Slic3r-Manual.idx && \
rm -f Slic3r-Manual.pdf && \
pdflatex  -halt-on-error Slic3r-Manual.tex && \
#evince Manual.pdf
#exit 0
makeindex -s Slic3r-Manual.gst -o Slic3r-Manual.gls Slic3r-Manual.glo && \
makeindex -s Slic3r-Manual.ist Slic3r-Manual.idx && \
pdflatex  -halt-on-error Slic3r-Manual.tex && \
makeindex -s Slic3r-Manual.gst -o Slic3r-Manual.gls Slic3r-Manual.glo && \
makeindex -s Slic3r-Manual.ist Slic3r-Manual.idx && \
pdflatex  -halt-on-error Slic3r-Manual.tex && \
pdflatex  -halt-on-error Slic3r-Manual.tex && \
pdflatex  -halt-on-error Slic3r-Manual-thumbs.tex
evince Slic3r-Manual.pdf 

