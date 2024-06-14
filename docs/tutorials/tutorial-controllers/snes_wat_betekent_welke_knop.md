---
sidebar_position: 2
---

# SNES controller - wat betekent welke knop?

De SNES controller heeft 8 knoppen.
Met het volgende script kun je gaan uitproberen welke knop bij welk nummer hoort.
In het script testen we nu nummer 0. Als het goed is, is dit de blauwe knop.

Kun jij erachter komen welke nummers bij welke knoppen horen?

```python
import pygame
import play

pygame.init()
joystick=pygame.joystick.Joystick(0)
joystick.init()
print("Joystick Name:", joystick.get_name())

BUTTON=0 # verander dit naar 1 of 2 of 3 of 4 of 5 of 6 of 7

tekst = play.new_text('klik op knop', font_size=70)

@play.repeat_forever
def check():
    if joystick.get_button(BUTTON) == 0:
        tekst.words=f'knop {BUTTON} wordt NIET ingedrukt'
    if joystick.get_button(BUTTON) == 1:
        tekst.words=f'knop {BUTTON} wordt WEL ingedrukt'
    
play.start_program()
```