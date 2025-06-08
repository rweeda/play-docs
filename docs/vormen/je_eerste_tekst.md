---
sidebar_position: 5
---

# 1.4 Je eerste tekst
We missen nog één ding: een tekst. Het is toch wel fijn als onze tekeningen en spellen ook tekst kunnen hebben.

Uiteraard is het systeem hetzelfde als bij **play.new_circle** en **play.new_box**.
Je kunt voor **play.new_text** kiezen uit:
- **words**: de woorden die op het scherm komen te staan
- **x**: staat standaard op 0 (het midden). Lager dan 0 is naar links, boven 0 is naar rechts.
- **y**: staat standaard op 0 (het midden), Lager dan 0 is naar beneden, boven 0 is naar boven.
- **font**: de font van de tekst. Kun je bijvoorbeeld aanpassen naar 'arial'.
- **font_size**: de grootte van de font.
- **color**: de kleur van de tekst.

Hierbij een voorbeeld:

```python
import play

play.new_text(words='hallo pythonista', font='arial', font_size=30)

play.start_program()
```

## Opdracht X.X Johan Cruijff

Maak onderstaande afbeelding na.

![cruijff](cruijff.png)

Tips:
- het zijn twee **play.new_text** aanroepen
- we gebruiken 'arial' als font

```python
import play

# PAS ONDERSTAANDE CODE AAN
play.new_text(words='Als ik zou willen dat je het begreep,')

play.start_program()
```






