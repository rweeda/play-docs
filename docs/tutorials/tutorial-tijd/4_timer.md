---
sidebar_position: 4
---

# Async voorbeeld: timer

Async kan bijvoorbeeld goed gebruikt worden voor een timer:

```python 
import play
 
time = 100
text = play.new_text(str(time))
print(time)
 
@play.repeat_forever
async def timer():
    global time
    if time > 0:
        time -= 1
        await play.timer(seconds=1)
        text.words = str(time)
play.start_program()
```

## Stap 1: draai de code
