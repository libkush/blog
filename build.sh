#!/bin/sh

GZIP="/usr/bin/gzip -n"
BROTLI="/home/linuxbrew/.linuxbrew/bin/brotli"
rm -rf public/*
hugo --minify

cd public
for text_file in $(find . \( -name "*.html" -o -name "*.xml" -o -name "*.css" -o -name "*.js" -o -name "*.json" -o -name "*.svg" -o -name "*.woff" -o -name "*.woff2" -o -name "*.ttf" -o -name "*.otf" -o -name "*.ico" \));
    do
        #echo "Compressing $text_file"
        $BROTLI --best -k $text_file
    done
    exit 0
rm sitemap.xml.br
