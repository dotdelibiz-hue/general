#!/usr/bin/env sh
# index.html（Artifact用：doctypeなし）から、そのままホスティングできる dist/index.html を作る
set -e
cd "$(dirname "$0")"
mkdir -p dist
{ printf '<!doctype html>\n<html lang="ja">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<style>body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n'; cat index.html; printf '\n</html>\n'; } > dist/index.html
echo "built dist/index.html"
