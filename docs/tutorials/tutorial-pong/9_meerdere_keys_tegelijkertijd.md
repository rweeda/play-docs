---
sidebar_position: 9
---

# Meerdere keys tegelijkertijd

Wat nou als ik twee toetsen tegelijkertijd inhoudt?
Lang leve de mooie events:

```python
import play

paddle = play.new_box(
    color='black',
    x=0,
    y=0,
    width=20,
    height=100,
)

@play.when_key_pressed('up')
def beweeg_paddle_omhoog(key):
    paddle.y += 10

@play.when_key_pressed('right')
def beweeg_paddle_rechts(key):
    paddle.x += 10

play.start_program()
```










