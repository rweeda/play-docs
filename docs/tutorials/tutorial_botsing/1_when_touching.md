---
sidebar_position: 1
---

# Een botsing met play.when_touching

De standaard manier van controleren of bijvoorbeeld een bal en een box elkaar raken is via
**play.when_touching**.

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

@ball.when_touching(box)
def botsing():
    ball.physics.x_speed = -10

play.start_program()
```

Zodra er een pixel botst, dan kunnen we dit weten via play.when_touching.

Maar wat als je ook wilt weten waar ze botsen?
