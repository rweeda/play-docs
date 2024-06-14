---
sidebar_position: 1
---

# Hoe begin je met een 2D-platformer?

```python 
import play

ball = play.new_circle(
    color='black',
    x=0,  # dit is het midden horizontaal
    y=0,  # dit is het midden verticaal
    radius=20,
)

ball.start_physics(can_move=True, 
                   obeys_gravity=True, 
                   stable=True, 
                   bounciness=0)

tekst = play.new_text(
    words='Je hebt gewonnen!',
    x=0,
    y=0,
)
tekst.hide()


@play.repeat_forever
def beweeg_character():
    keys = play.pygame.key.get_pressed()
    if keys[play.pygame.K_UP]:
        ball.y = ball.y + 10
    if keys[play.pygame.K_RIGHT]:
        ball.x = ball.x + 10


@play.repeat_forever
def volgend_level():
    if ball.right >= play.screen.right:
        tekst.show()


play.start_program()
```

## Stap 1: draai de code
Je kunt de bal besturen met pijltje omhoog en naar rechts.
Zodra je de rechterkant van het scherm bereikt, zou je de tekst **Je hebt gewonnen** moeten zien.

## Stap 2: Hoe werkt de code?

### Hoezo valt de bal naar beneden?
```python
ball.start_physics(can_move=True, 
                   obeys_gravity=True, 
                   stable=True, 
                   bounciness=0)
```
Voor een 2D platformer is het belangrijk dat iets hebben dat lijkt op de zwaartekracht. Gelukkig kan dit via **obeys_gravity=True**.
Als je springt met de bal, zou de bal langzaam weer naar beneden moeten komen.


### De tekst verbergen
```python
tekst = play.new_text(
    words='Je hebt gewonnen!',
    x=0,
    y=0,
)
tekst.hide()
```
**tekst.hide()** is hier belangrijk. Je maakt de tekst aan het begin van je programma, maar je **hide** hem totdat de bal de rechterkant van het scherm raakt.

### De tekst laten zien als de speler gewonnen heeft
```python
@play.repeat_forever
def volgend_level():
    if ball.right >= play.screen.right:
        tekst.show()
```
Pas als de meest rechter pixel van de pixel gelijk of groter is dan de rechterkant van het scherm, pas dan laten we de tekst zien via **tekst.show()**.

