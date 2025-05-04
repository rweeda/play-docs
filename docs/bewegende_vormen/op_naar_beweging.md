---
sidebar_position: 1
---

# Op naar beweging

Tot nu toe hebben de vormen stilgestaan op je scherm.
Op die manier wordt het erg lastig om een spel te programmeren.
We hebben beweging nodig! Hiervoor moeten we wel één heel belangrijk iets leren: vormen aanpassen nadat ze gemaakt zijn.

Kijk heel kritisch naar het volgende voorbeeld:


```python 
import play 

play.new_circle()

play.start_program()
```

Hoe kan ik de cirkel veranderen **nadat** deze gemaakt is?
Oftwel, kan ik via code na **play.new_circle()** iets veranderen aan de cirkel?

## De variabele
Het antwoord is heel duidelijk: nee. We hebben een **variabele** nodig die ons toegang geeft tot de cirkel. Kijk maar eens goed naar het onderstaande voorbeeld:


```python
import play 

cirkel = play.new_circle()
cirkel.color = 'blue'

play.start_program()
```

In dit codefragment gebeurt erg veel:
- **play.new_circle()**: dit tekent de cirkel op het scherm
- **cirkel = play.new_circle()**: dit tekent de cirkel EN zorgt ervoor dat de variabele **cirkel** verwijst naar onze cirkel
- **cirkel.color = 'blue'**: dit wijzigt van onze cirkel alleen kleur naar blauw

Naast kleur kun je ook de x-positie, y-positie etc. aanpassen. Probeer het maar eens in de volgende opdracht.

## Opdracht X.X: je aangepaste cirkel
Maak een nieuwe cirkel en pas deze aan:
- Verander de kleur naar 'blue' 
- Verander de x-positie naar 150 
- Verander de y-positie naar 200 
- Vergroot de cirkel door de 'radius' (straal) aan te passen naar 200

```python
import play 

cirkel = play.new_circle()
# JOUW CODE HIER

play.start_program()
```


