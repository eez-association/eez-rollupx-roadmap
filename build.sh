#!/bin/sh
# Wraps roadmap.html (the Artifact page fragment) into a standalone index.html for Vercel.
set -e
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n</head>\n<body>\n'; cat roadmap.html; printf '\n</body>\n</html>\n'; } > index.html
