---
sidebar_position: 5
---

# Botsing met niets

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


@play.repeat_forever
def is_er_botsing():
    boxes = [box, box1]
    is_there_a_collision = False
    for a_box in boxes:
        if ball.is_touching(a_box):
            is_there_a_collision = True
    
    if is_there_a_collision == False:
        ball.color = 'red'
    else:
        ball.color = 'black'

play.start_program()
```
