@echo off
powershell "if (Test-Path -Path 'ia' -PathType Container) { Remove-Item -Path 'ia' -Recurse -Force }"
powershell "New-Item -ItemType Directory -Path 'ia'"


jupytext .\docs\cheatsheet.md -o ia\cheatsheet.ipynb

powershell "New-Item -ItemType Directory -Path 'ia/eerste_programma'"
jupytext .\docs\eerste_programma\play_importeren.md -o ia\eerste_programma\play_importeren.ipynb
jupytext .\docs\eerste_programma\je_eerste_programma.md -o ia\eerste_programma\je_eerste_programma.ipynb
jupytext .\docs\eerste_programma\je_eerste_cirkel.md -o ia\eerste_programma\je_eerste_cirkel.ipynb
powershell "Copy-Item -Path ./docs/eerste_programma\weg.png -Destination ./ia/eerste_programma/weg.png"
jupytext .\docs\eerste_programma\je_eerste_rechthoek.md -o ia\eerste_programma\je_eerste_rechthoek.ipynb
powershell "Copy-Item -Path ./docs/eerste_programma\cruijff.png -Destination ./ia/eerste_programma/cruijff.png"
jupytext .\docs\eerste_programma\je_eerste_tekst.md -o ia\eerste_programma\je_eerste_tekst.ipynb

powershell "New-Item -ItemType Directory -Path 'ia/bewegende_vormen'"
jupytext .\docs\bewegende_vormen\op_naar_beweging.md -o ia\bewegende_vormen\op_naar_beweging.ipynb
jupytext .\docs\bewegende_vormen\eerste_beweging.md -o ia\bewegende_vormen\eerste_beweging.ipynb

echo Done!
