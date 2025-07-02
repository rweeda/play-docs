---
sidebar_position: 1
---

# 7.1 Pong
Waarom niet? Een super bekend spel en deze library is uitermate geschikt voor het bouwen van pong.
Laten we eens bekijken wat we nodig hebben?

## De bal
Hiervoor gebruik je uiteraard een **play.new_circle**.
Verder gebruik je **start_physics** om de bal te laten bewegen.
Een tip is om **start_physics(obeys_gravity=False, x_speed=200, friction=0)** te gebruiken als start.

## De batjes
Een batje maak je met **play.new_box**. Ook hier voeg je fysica aan toe met **start_physics(obeys_gravity=False, can_move=False. friction=0)**.
Je maakt er twee, anders kunnen we niet tegen elkaar spelen.

## Batje bewegen
**@play.when_key_pressed** kun je gebruiken zodat je de batjes naar boven en beneden kan bewegen.

## Botsing bal en muur
Je gebruikt hiervoor de gebeurtenis **VARIABLE.when_stopped_touching(VARIABLE2)**.
Belangrijke vraag: hoe weet je of de bal de linker- of rechtermuur geraakt heeft?
Je kan binnen de gebeurtenis opvragen waar de bal zich bevindt op de horizontale as.
Is **bal.x** negatief, dan heeft de bal de linkermuur geraakt, anders de rechtermuur.

```python
import play

bal = play.new_circle(radius=30)
bal.start_physics(obeys_gravity=False, x_speed=200, friction=0)

score_links = 0
score_rechts = 0

@bal.when_stopped_touching_wall
def score():
    print(bal.x)
    global score_rechts
    global score_links

    if bal.x < 0:
        #WAT KOMT HIER TE STAAN?


play.start_program()
```


## Score
Een score kun je aanmaken met **play.new_text**.
Vergeet niet **global** te gebruiken in je functie als je de score gaat aanpassen.

## Bal ook omhoog
Naast x_speed bestaat er ook y_speed. Dus **start_physics(obeys_gravity=False, x_speed=60, y_speed=60)**.

## Mogelijke uitbreidingen
- Wanneer heeft iemand gewonnen?
- Kun je het batje de computer laten zijn?






