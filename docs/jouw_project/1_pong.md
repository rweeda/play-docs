---
sidebar_position: 1
---

# Pong
Waarom niet? Een super bekend spel en deze library is uitermate geschikt voor het bouwen van pong.
Laten we eens bekijken wat we nodig hebben?

## De bal
Hiervoor gebruik je uiteraard een **play.new_circle**.
Verder gebruik je **start_physics** om de bal te laten bewegen.
Een tip is om **start_physics(obeys_gravity=False, x_speed=60)** te gebruiken als start.

## De batjes
Een batje maak je met **play.new_box**
Ook hier voeg je fysica aan toe met **start_physics(obeys_gravity=False, can_move=False)**.
Je maakt er twee, anders kunnen we niet tegen elkaar spelen.

## Batje bewegen
**@play.when_key_pressed** kun je gebruiken zodat je de batjes naar boven en beneden kan bewegen.

## Score
Een score kun je aanmaken met **play.new_text**

## Botsing bal en batje
Je gebruikt hiervoor de gebeurtenis **VARIABLE.when_stopped_touching(VARIABLE2)**.

## Bal ook omhoog
Naast x_speed bestaat er ook y_speed. Dus **start_physics(obeys_gravity=False, x_speed=60, y_speed=60)**.

## Mogelijke uitbreidingen
- Wanneer heeft iemand gewonnen?
- Kun je het batje de computer laten zijn?






