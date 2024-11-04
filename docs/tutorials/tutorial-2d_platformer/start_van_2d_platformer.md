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

box = play.new_box(color='black',
                   x=200,
                   y=200,
                   width=20,
                   height=20,
                   border_color="light blue",
                   border_width=10)


ball.start_physics(can_move=True,
                   obeys_gravity=True,
                   stable=True,
                   bounciness=0)

@play.when_key_pressed('up')
def beweeg_omhoog(key):
    ball.y = ball.y + 10

@play.when_key_pressed('right')
def beweeg_rechts(key):
    ball.x = ball.x + 10

@ball.when_touching(box)
def volgend_level():
    play.new_text(
        words='Je hebt gewonnen!',
        x=0,
        y=0,
    )

play.start_program()
```

## Stap 1: draai de code
Je kunt de bal besturen met pijltje omhoog en naar rechts.
Zodra je de box raakt, zou je de tekst **Je hebt gewonnen** moeten zien.

## Stap 2: Hoe werkt de code?

### Hoezo valt de bal naar beneden?
```python
ball.start_physics(can_move=True, 
                   obeys_gravity=True, 
                   stable=True, 
                   bounciness=0)
```
Voor een 2D platformer is het belangrijk om iets te hebben dat lijkt op de zwaartekracht. Gelukkig kan dit via **obeys_gravity=True**.
Als je springt met de bal, zou de bal langzaam weer naar beneden moeten komen.

