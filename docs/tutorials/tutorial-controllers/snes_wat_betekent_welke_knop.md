---
sidebar_position: 2
---

# SNES controller - wat betekent welke knop?

De SNES controller heeft 8 knoppen.
Met het volgende script kun je gaan uitproberen welke knop bij welk nummer hoort.
In het script testen we nu nummer 0. Als het goed is, is dit de blauwe knop.

```python
import pygame
import play

# welke controller?
controller_id = 0 # verander dit als je een extra controller inplugt

# maak verbinding met de controller
pygame.init()
joystick=pygame.joystick.Joystick(controller_id)
joystick.init()
print("Joystick Name:", joystick.get_name())

# welke button?
button=0 # verander dit naar een hoger getal en kijk of je alle buttons kan vinden

tekst = play.new_text('klik op knop', font_size=50)

@play.controllers.when_button_pressed(controller_id, button)
def kijk_of_knop_wordt_ingeduwd():
    tekst.words=f'knop {button} op controller {controller_id} is ingedrukt'
    
play.start_program()
```

Hoe werkt dit?
```python
# welke controller?
controller_id = 0 # verander dit als je een extra controller inplugt
```
We maken een variabele **controller_id** en zetten deze op de waarde 0.
Als je maar één SNES controller verbindt met je computer, krijgt deze het id 0 van je computer.
Deze hebben we later nodig.

```python
pygame.init()
joystick=pygame.joystick.Joystick(controller_id)
joystick.init()
print("Joystick Name:", joystick.get_name())
```
Dit stuk code gebruikt de variabele **controller_id** om verbinding te maken met je SNES controller.

```python
# welke button?
button=0 # verander dit naar een hoger getal en kijk of je alle buttons kan vinden
``` 
We zetten nu de variabelen **button** op de waarde 0.
Button 0 is de blauwe button op je SNES controller. 
Mocht je een andere button willen testen, dan verander je dit nummer naar 1,2, etc.

```python
@play.controllers.when_button_pressed(controller_id, button)
```
Nu wordt het belangrijk.
Bij de gebeurtenis dat op **controller** 0 de **button** 0 wordt ingedrukt:
Voer het volgende uit:
```python 
def kijk_of_knop_wordt_ingeduwd():
    tekst.words=f'knop {button} op controller {controller_id} is ingedrukt'
```

## Kun jij uittesten welk nummer bij welke knop hoort?

