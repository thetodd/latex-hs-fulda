Latex-Vorlage für die Hochschule Fulda
==============

Die Latexdokumenten-Klasse *hsfuldabook* ermöglicht ein einheitliches Design für
wissenschaftliche Arbeiten an der Hochschule Fulda.

Es handelt sich hierbei um ein privates Projekt.

##Einstellungen
###Logos einstellen
Mit dem Kommando `\setlogo` lässt sich das Logo auf der Titelseite einstellen.
Das Kommando `\setwatermark` legt das Wasserzeichen auf der Titelseite fest.
###Farben
Gefallen einem die voreingestellten Farben nicht, lassen sich die Farben auch
gezielt einzeln neu beschreiben.

`\definecolor{fulda_green}{rgb}{.38,.74,.10}`

Natürlich lassen sich die Farben auch im eigentlichen Dokument verwenden.

`\color{fulda_green}`

Verfügbare Farben sind:

- fulda_green
- fulda_lightgreen
- fulda_lightgray
- fulda_subtitle
- fulda_title
- fulda_chapter
- fulda_section
- fulda_subsection
- fulda_part
- fulda_partnumber
- fulda_partback
- fulda_highlighttitle
- fulda_highlightbody
- fulda_highlighttitletext

###Infobox
Um Text hervorheben zu können kann das Kommando `\infobox{Titel}{Infotext}` 
verwendet werden. Dadurch wird standardmäßig eine grüne Box erzeugt, die den
angegeben Text enthält.
