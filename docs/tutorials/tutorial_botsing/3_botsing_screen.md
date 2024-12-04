---
sidebar_position: 3
---

# Botsing met het scherm

Op diezelfde manier kunnen we ook een botsing met het scherm detecteren.
```python
import play

ball = play.new_circle('black',
                       x=0,
                       y=0,
                       radius=30)

ball.start_physics(x_speed=10,
                   obeys_gravity=False)

@play.repeat_forever
def collision():
    if ball.right >= play.screen.right:
        print('hit')
        ball.physics.x_speed = -10
        
play.start_program()
```

We kunnen in corderius-play opvragen wat de positie van het scherm is:
- meest rechter pixel is: **play.screen.right**
- meest linker pixel is: **play.screen.left**
- bovenste pixel is: **play.screen.top**
- onderste pixel is: **play.screen.bottom**

