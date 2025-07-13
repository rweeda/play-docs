---
sidebar_position: 1
---

# 7.1 Pong
Waarom niet? Een super bekend spel en deze library is uitermate geschikt voor het bouwen van pong.
Laten we eens bekijken wat we nodig hebben? Bij elke stap geven we tips hoe je het kan aanpakken. 

Voor voorbeelden ga je uiteraard naar de [Cheatsheet](../cheatsheet.md).

## De bal
Hiervoor gebruik je uiteraard een **play.new_circle()**.
Verder gebruik je **start_physics** om de bal te laten bewegen.
Een tip is om **start_physics(obeys_gravity=False, x_speed=200, friction=0)** te gebruiken als start.

## De batjes
Een batje maak je met **play.new_box()**. Ook hier voeg je fysica aan toe met **start_physics(obeys_gravity=False, can_move=False. friction=0)**.
Je maakt er twee, anders kunnen we niet tegen elkaar spelen.

## Batje bewegen
**@play.when_key_pressed** kun je gebruiken zodat je de batjes naar boven en beneden kan bewegen.

## Wanneer krijgt iemand een punt?
We gaan nog twee dunne balken maken, precies aan de linkerkant van het scherm en precies aan de rechterkant van het scherm. Zodra de bal botst met zo'n balk, krijgt de tegenstander een punt.
Hierbij een klein voorbeeld om je op gang te helpen:

```python
import play

bal = play.new_circle(radius=20)
bal.start_physics(obeys_gravity=False, x_speed=200, friction=0)

batje_rechts = play.new_box(height=150, width=50, x=390, y=100)
batje_rechts.start_physics(obeys_gravity=False, can_move=False, friction=0)

muur_rechts = play.new_box(height=600, width=20, x=400)
muur_rechts.start_physics(obeys_gravity=False, can_move=False, friction=0)

@bal.when_stopped_touching(muur_rechts)
def punt_voor_de_ander():
    bal.x = 0 # bal gaat naar het midden

play.start_program()
```

## Score
Een score kun je aanmaken met **play.new_text()**.
Vergeet niet **global** te gebruiken in je functie als je de score gaat aanpassen.

## Bal ook omhoog
Naast x_speed bestaat er ook y_speed. Dus **start_physics(obeys_gravity=False, x_speed=60, y_speed=60)**.

## Mogelijke uitbreidingen
- Wanneer heeft iemand gewonnen?
- Kun je het batje de computer laten zijn?
- Hoe maak je een startmenu?






