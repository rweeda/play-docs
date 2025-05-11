---
sidebar_position: 3
---

# Je eerste cirkel

Tijd om iets op het scherm te tekenen.

```python
import play

play.new_circle()

play.start_program()
```

Als het goed is, zie je een grote zwarte cirkel op je scherm.
Merk op dat we nergens hebben aangegeven:
- welke kleur de cirkel moet hebben
- hoe groot deze is
- ....

Dat is toch wel gek. Het programma heeft stiekem voor ons al een paar zaken gekozen.
Het is toch wel fijn als we het zelf kunnen veranderen.

## De kleur aanpassen
We kunnen de kleur aanpassen met het attribuut **color**.
Om bijvoorbeeld de cirkel blauw te maken, kun je het volgende doen.

```python
import play

play.new_circle(color='blue')

play.start_program()
```

Ben je benieuwd uit welke kleuren je allemaal kan kiezen? Op [deze pagina](https://www.pygame.org/docs/ref/color_list.html) zie je alle opties.

### X.X De kleur aanpassen
a) Schrijf een programma waarbij de kleur van de cirkel rood is. 

```python 
import play

# SCHRIJF HIER JE CODE

play.start_progrma()
```

b) pas het programma aan met een kleur die je gekozen hebt uit de lijst van alle opties


```python 
import play

# SCHRIJF HIER JE CODE

play.start_progrma()
```

## De positie aanpassen
Je kunt de cirkel ook op een andere plek zetten. Hiervoor gebruik je de **x** (horizontaal) en **y** (verticaal) attributen.
Het midden van het scherm is x=0 en y=0.

```python
import play

play.new_circle(x=0, y=0)

play.start_program()
```

Zie je de cirkel in het midden staan?

### Opdracht X.X: de positie aanpassen

Waar zie je cirkel verschijnen bij:

a) x=100 en y=0 

```python 
import play

# SCHRIJF HIER JE CODE

play.start_progrma()
```

b) x=-100 en y=0

```python 
import play

# SCHRIJF HIER JE CODE

play.start_progrma()
```

c) x=0 en y=100

```python 
import play

# SCHRIJF HIER JE CODE

play.start_progrma()
```

d) x=0 en y=-100

```python 
import play

# SCHRIJF HIER JE CODE

play.start_progrma()
```

## Wat kan ik aanpassen aan een cirkel?
Hierbij de lijst van attributen voor een cirkel:
- **color**: staat standaard op 'black'. [Op deze pagina](https://www.pygame.org/docs/ref/color_list.html) zie je welke opties er zijn.
- **x**: staat standaard op 0 (het midden). Lager dan 0 is naar links, boven 0 is naar rechts.
- **y**: staat standaard op 0 (het midden), Lager dan 0 is naar beneden, boven 0 is naar boven.
- **radius**: staat standaard op 100. Hoe groter de waarde, hoe groter de cirkel.
- **border_color**: staat standaard op  'light blue'. Let op, als de **border_width** 0 is, zie je de rand niet.
- **border_width**: the breedte van de rand. Staat standaard op 0 (geen rand zichtbaar)
- **transparency**: 0 --> onzichtbaar. 100 --> volledig zichtbaar.

### Opdracht X.X De mooiste cirkel

a) Teken twee cirkels die elkaar niet mogen raken. De eerste cirkel is blauw en heeft geen rand. De tweede is rood en heeft een dunne groene rand.

```python
import play 

# SCHRIJF HIER JE CODE

play.start_program()
```