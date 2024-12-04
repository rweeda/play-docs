---
sidebar_position: 3
---

# Botsing één van meerdere 

Een botsing met één of meer kan ook op deze manier:

Tip:
- Neem Hoofdstuk 9 uit Informatica-ACTIEF door over lijsten

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

box1 = play.new_box(color='black',
                    x=-300,
                    y=0,
                    width=30,
                    height=300,
                    border_color="black",
                    border_width=10)

boxes = [box, box1]

@play.repeat_forever
def botsing():
    for box in boxes:
        if ball.is_touching(box):
            ball.x=0
            ball.physics.x_speed = ball.physics.x_speed * -1

play.start_program()
```
