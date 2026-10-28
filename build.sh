#!/bin/sh
# Baut aus app.html (Artifact-Fragment) eine eigenständige index.html zum Hosten, z. B. auf GitHub Pages.
cd "$(dirname "$0")"
{
cat <<'HEAD'
<!doctype html>
<html lang="de">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-title" content="Grid Studio">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="manifest" href="manifest.webmanifest">
<meta name="gs-build" content="BUILD_ID">
<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px);box-sizing:border-box}body{margin:0}[hidden]{display:none!important}img{max-width:100%}</style>
HEAD
sed -n '1,/^<\/style>/p' app.html
echo '</head>'
echo '<body>'
sed -n '/^<\/style>/,$p' app.html | sed '1d'
echo '</body>'
echo '</html>'
} > index.html
# Versionskennung, damit die App erkennt, dass es ein Update gibt
sed -i "s/BUILD_ID/$(date +%Y%m%d%H%M%S)/" index.html
