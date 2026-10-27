# Grid Studio

Instagram-Grid-Planer: iPhone-Alben laden, Fotos in den 3:4-Feed ziehen, zwischen bereits gepostete Bilder schieben, Karussells planen und Slides fertig zugeschnitten (1080 × 1440) exportieren.

- `app.html`: Quelle (auch als Claude-Artifact veröffentlicht)
- `index.html`: eigenständige Version zum Hosten, wird mit `./build.sh` aus `app.html` erzeugt
- Daten bleiben lokal im Browser (IndexedDB), nichts wird hochgeladen.

## Online stellen

GitHub → Settings → Pages → „Deploy from a branch“ → Branch `main`, Ordner `/ (root)` → Save.
Danach läuft die App unter https://laura-mazurek.github.io/grid-studio/

Am iPhone in Safari öffnen → Teilen → „Zum Home-Bildschirm“.

## Instagram-Sync

Instagram-Symbol oben rechts → Schritte im Dialog folgen → Token einfügen.
Die App lädt dann alle Posts (Business- oder Creator-Konto nötig), prüft beim Öffnen auf neue Posts,
ersetzt geplante Entwürfe mit gleichem Caption-Anfang durch den echten Post und verlängert den Schlüssel selbst.
Der Schlüssel wird nur im Browser auf deinem Gerät gespeichert.

## Ansichten

- **Neueste zuerst**: automatisch nach Datum
- **Instagram**: die echte Profil-Reihenfolge, einmal von Hand gelegt (Instagram gibt sie nicht heraus); neue Posts kommen beim Sync oben dazu
- **Versionen**: frei bearbeitbar; „⋯“ → umbenennen, auf Instagram zurücksetzen (geplante oben), duplizieren, löschen

## Weitere Funktionen

- Geposteten Beitrag antippen → **Im Grid ausblenden** (z. B. Reels, die nicht im Raster erscheinen)
- **⤓ Als Bild**: aktuelle Ansicht als JPEG (1080 px breit, bis 15 Reihen) zum Vergleichen
