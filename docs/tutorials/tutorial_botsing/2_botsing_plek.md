---
sidebar_position: 2
---

# Waar vindt de botsing plaats?

Laten we beginnen met het maken van een bal:

```python
import play

ball = play.new_circle('black',
                       x=0,
                       y=0,
                       radius=30)

play.start_program()
```

We kunnen in corderius-play opvragen wat de positie van de:
- meest rechter pixel is: **ball.right**
- meest linker pixel is: **ball.left**
- bovenste pixel is: **ball.top**
- onderste pixel is: **ball.bottom**

Wat als we deze eens gaan gebruiken om te kijken waar de bal botst:

```python
import play

ball = play.new_circle('black',
                       x=0,
                       y=0,
                       radius=30)

ball.start_physics(x_speed=10,
                   obeys_gravity=False)

box = play.new_box(color='black',
                   x=300,
                   y=0,
                   width=30,
                   height=300,
                   border_color="black",
                   border_width=10)

@play.repeat_forever
def collision():
    if ball.right >= box.left:
        ball.physics.x_speed = -10
        
play.start_program()
```
