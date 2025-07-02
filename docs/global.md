---
sidebar_position: 8
---

# 7. global
Hoe houd ik een score bij van bijvoorbeeld een spel?
In onze omgeving is het handig om dan **global** te gebruiken.

## 7.1 een niet werkend voorbeeld :)

Kopieer onderstaande code naar je editor en voer de code uit:

```python
import play

score = 0
score_tekst = play.new_text(str(score), y=100, font_size=40)

@play.when_key_released("space")
def spatie_ingedrukt():
    score = score + 1
    score_tekst.words = str(score)
    
play.start_program()
```

Druk maar eens op spatie. Als het goed is verandert er niets en zie je het volgende:

```
UnboundLocalError: local variable 'score' referenced before assignment
```

Dit betekent dat we niet de **rechten** hebben om de variabele **score** te wijzigen.

## 7.2 een goed voorbeeld
We gaan het statement **global** toevoegen.
Als we het commondo **global VARIABLE** geven, dan hebben we wel de rechten om de variabele te wijzigen.

```python
import play

score = 0
score_tekst = play.new_text(str(score), y=100, font_size=40)

@play.when_key_released("space")
def spatie_ingedrukt():
    global score
    score = score + 1
    score_tekst.words = str(score)
    
play.start_program()
```      

