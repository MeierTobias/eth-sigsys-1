#!/bin/sh
COMMAND="latexmk -pdf -cd -interaction=nonstopmode -file-line-error -jobname=sigsys_I -outdir=../build ./src/main.tex ; 
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/usr/src/app -w /usr/src/app texlive/texlive:latest sh -c "$COMMAND"