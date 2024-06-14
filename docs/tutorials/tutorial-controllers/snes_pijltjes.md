---
sidebar_position: 3
---

# SNES controller - en de pijltjes dan?
De code krijg je van ons. Veel plezier ermee!

```python
import pygame
import play

pygame.init()
joystick=pygame.joystick.Joystick(0)
joystick.init()
print("Joystick Name:", joystick.get_name())

tekst = play.new_text('klik op axis', font_size=70)

print(joystick.get_numaxes())

@play.repeat_forever
def check():
    links_rechts = round(joystick.get_axis(0))
    boven_beneden = round(joystick.get_axis(1))
    
    if links_rechts == -1:
        tekst.words = 'links'
    if links_rechts == 1:
        tekst.words = 'rechts'
    
    if boven_beneden == -1:
        tekst.words = 'boven'
    if boven_beneden == 1:
        tekst.words = 'beneden'
```