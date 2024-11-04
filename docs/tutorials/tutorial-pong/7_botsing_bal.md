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
                   x=300,
                   y=0,
                   width=30,
                   height=300,
                   border_color="black",
                   border_width=10)

@ball.when_touching(box)
def botsing():
        ball.x = 0
        # in pygame zorgt een botsing ervoor dat de x_speed verandert
        # vandaar deze regel zodat we deze weer terugzetten naar wat we hadden
        ball.physics.x_speed = 10

play.start_program()
```
Gelukkig heeft corderius-play een mooi event:

```python
@OBJECT.when_touching(ANDER_OBJECT)
```

## Stap 1: Kun jij de bal bij een botsing naar links laten bewegen en hem niet laten teleporteren?

<details>
  <summary>Klik hier voor een tip</summary>

  Denk aan **ball.x** en **ball.physics.x_speed**

</details>

<details>
  <summary>Vind je het lastig? Klik hier voor een voorbeeld.</summary>

```python
import play

ball = play.new_circle('black',
                       x=0,
                       y=0,
                       radius=30)

ball.start_physics(x_speed=10,
                   obeys_gravity=False)

box = play.new_box(color='black',
                   x=300,
                   y=0,
                   width=30,
                   height=300,
                   border_color="black",
                   border_width=10)

@ball.when_touching(box)
def botsing():
        ball.physics.x_speed = -10

play.start_program()
```
</details>







