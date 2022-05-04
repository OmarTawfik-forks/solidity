#!/bin/bash

for rst in ./docs/**/*.rst; do
     pandoc "$rst" -f rst -t markdown -o "${rst%.*}.md";
done
