---
sidebar_position: 9
---

# Omhoog en naar beneden

Naast de **x_speed** is er natuurlijk ook de **y_speed**.

```python
import play

ball = play.new_circle('black',
                       x=0,
                       y=0,
                       radius=30)

ball.start_physics(x_speed=10,
                   y_speed=10,
                   obeys_gravity=False)

play.start_program()
```

## Stap 1: probeer de code uit









