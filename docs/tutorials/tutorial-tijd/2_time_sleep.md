---
sidebar_position: 2
---

# Tijdelijk sneller met time.sleep?

We gaan nu proberen om de ball tijdelijk sneller te laten bewegen bij een muisklik.
Je meest logische gedachte is misschien om time.sleep te gebruiken:

```python 
import play
import time

ball = play.new_circle(
    color='black',
    x=0,  # dit is het midden horizontaal
    y=0,  # dit is het midden verticaal
    radius=40,
)

ball.start_physics(obeys_gravity=False,
                   x_speed=10)

@play.when_mouse_clicked
def tijdelijk_sneller():
    ball.physics.x_speed = 30
    time.sleep(1)
    ball.physics.x_speed = 10

play.start_program()
```

## Stap 1: draai de code
Beweegt de bal tijdelijk sneller? Zo nee, wat zie je gebeuren?
