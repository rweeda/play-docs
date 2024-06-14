---
sidebar_position: 9
---

# Meerdere keys tegelijkertijd

Het blijkt tot nu toe lastig om te controleren of er meerdere keyboard toetsen
tegelijkertijd ingedrukt zijn.

Hierbij een voorbeeld mocht je dit nodig hebben.
Mocht je de complete lijst willen inzien, kijk dan [hier](https://github.com/Corderius-College-Amersfoort/play/blob/master/play/io/keypress.py).
```python
import play

paddle = play.new_box(
    color='black',
    x=0,
    y=0,
    width=20,
    height=100,
)


@play.repeat_forever
def beweeg_links():
    keys = play.pygame.key.get_pressed()
    pijltje_omhoog_ingedrukt = keys[play.pygame.K_UP]
    if pijltje_omhoog_ingedrukt == True:
        paddle.y += 10
    # hier kun je nog meer if-statements schrijven
    
    
play.start_program()
```










