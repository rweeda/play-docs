---
sidebar_position: 8
---

# Een botsing met de bal


# 7: botsing bal

Hoe check je of de bal en de paddle elkaar raken?

```python
import play

ball = play.new_circle('black',
                       x=0,
                       y=0,
                       radius=30)

ball.start_physics(x_speed=10,
                   obeys_gravity=False)

box = play.new_box(color='black',
                   x=0,
                   y=300,
                   width=30,
                   height=300,
                   border_color="black",
                   border_width=10)


@play.repeat_forever
def botsing():
    if VERANDER_MIJ.is_touching(VERANDER_MIJ_OOK):
        # we verplaatsen de bal naar x=0 (dus het midden)
        ball.x = 0
        
        # in pygame zorgt een botsing ervoor dat de x_speed verandert
        # vandaar deze regel zodat we deze weer terugzetten naar wat we hadden
        ball.physics.x_speed = 10
        
play.start_program()
```
Gelukkig heeft corderius-play een mooie functie:

```python
OBJECT.is_touching(ANDER_OBJECT)
```

## Stap 1: code werkend maken

<details>
  <summary>Klik hier voor een tip</summary>
  <p>Welke twee dingen gaan botsen? Welke variabelen gebruik je hiervoor?</p>
</details>

<details>
  <summary>Vind je het lastig? Klik hier voor een voorbeeld.</summary>
  <p>
  ```python 
import play

ball = play.new_circle('black',
                       x=0,
                       y=0,
                       radius=30)

ball.start_physics(x_speed=10,
                   obeys_gravity=False)

box = play.new_box(color='black',
                   x=0,
                   y=300,
                   width=30,
                   height=300,
                   border_color="black",
                   border_width=10)


@play.repeat_forever
def botsing():
    if ball.is_touching(box):
        ball.x = 0
        
        # in pygame zorgt een botsing ervoor dat de x_speed verandert
        # vandaar deze regel zodat we deze weer terugzetten naar wat we hadden
        ball.physics.x_speed = 10
        
play.start_program()
```
  </p>
</details>


## Stap 2: van richting veranderen
Wat moet je eigenlijk veranderen om de bal naar links te laten gaan zodra er een botsing is met het batje?

<details>
  <summary>Klik hier voor een tip</summary>
  <p>Wat zou je moeten veranderen aan **x_speed**?</p>
</details>

<details>
  <summary>Vind je het lastig? Klik hier voor een voorbeeld.</summary>
  <p>
  ```python 
import play

ball = play.new_circle('black',
                       x=0,
                       y=0,
                       radius=30)

ball.start_physics(x_speed=10,
                   obeys_gravity=False)

box = play.new_box(color='black',
                   x=0,
                   y=300,
                   width=30,
                   height=300,
                   border_color="black",
                   border_width=10)


@play.repeat_forever
def botsing():
    if ball.is_touching(box):
        ball.x = 0
        
        # in pygame zorgt een botsing ervoor dat de x_speed verandert
        # vandaar deze regel zodat we deze weer terugzetten naar wat we hadden
        ball.physics.x_speed = -10
        
play.start_program()
```
  </p>
</details>









