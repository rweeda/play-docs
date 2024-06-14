---
sidebar_position: 3
---

# De bal bewegen

```python
import play

ball = play.new_circle(
    color='black',
    x=0,  # dit is het midden horizontaal
    y=0,  # dit is het midden verticaal
    radius=40,
)

ball.start_physics(
    x_speed=10,  # snelheid horizontaal
    obeys_gravity=False,  # onderhevig aan zwaartekracht
)

play.start_program()

```

## Stap 1: physics 
We gaan gebruik maken van "physics" (natuurkunde)
om de bal te laten bewegen. Nadat we een bal gemaakt hebben, kunnen we
er natuurkundige regels aan toevoegen waar de bal zich aan moet houden.

Bijvoorbeeld:
- **x_speed=10**: dit betekent dat elk frame (heel wat keren per seconde) de bal 10 pixels naar rechts gaat.

Kijk maar eens wat er gebeurt als je dit script draait.

## Stap 2: Pas de code zo aan dat de bal sneller naar rechts beweegt

<details>
  <summary>Klik hier voor een tip</summary>
  <p>Pas **x_speed** aan</p>
</details>

<details>
  <summary>Vind je het lastig? Klik hier voor een voorbeeld.</summary>
  <p>
  ```python 
import play

ball = play.new_circle(
    color='black',
    x=0,  # dit is het midden horizontaal
    y=0,  # dit is het midden verticaal
    radius=40,
)

ball.start_physics(
    x_speed=20,  # snelheid horizontaal
    obeys_gravity=False,  # onderhevig aan zwaartekracht
)

play.start_program()
    ```
  </p>
</details>

## Stap 3: Pas de code zo aan dat de bal naar links beweegt in plaats van naar rechts.
<details>
  <summary>Klik hier voor een tip</summary>
  <p>Welke waarde moet **x_speed** hebben zodat de bal naar links gaat?</p>
</details>

<details>
  <summary>Vind je het lastig? Klik hier voor een voorbeeld.</summary>
  <p>
  ```python 
import play

ball = play.new_circle(
    color='black',
    x=0,  # dit is het midden horizontaal
    y=0,  # dit is het midden verticaal
    radius=40,
)

ball.start_physics(
    x_speed=-10,  # snelheid horizontaal
    obeys_gravity=False,  # onderhevig aan zwaartekracht
)

play.start_program()
    ```
  </p>
</details>


