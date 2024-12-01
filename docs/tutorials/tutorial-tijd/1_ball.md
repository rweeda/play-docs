---
sidebar_position: 1
---

# We beginnen met een bal die beweegt

```python 
import play

ball = play.new_circle(
    color='black',
    x=0,  # dit is het midden horizontaal
    y=0,  # dit is het midden verticaal
    radius=40,
)

ball.start_physics(obeys_gravity=False,
                   x_speed=10)

play.start_program()
```

## Stap 1: draai de code
