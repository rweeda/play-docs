---
sidebar_position: 5
---

# Het batje bewegen

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
def paddle_omhoog(key):
    if key == 'up':
        paddle.y = paddle.y + 10

play.start_program()
```

We moeten het batje wel kunnen bewegen. Maar hoe?

```python
@play.when_key_pressed('up')
```
De regel code hierboven betekent dat de code eronder alleen draait als het pijltje omhoog ingedrukt is.

```python
def paddle_omhoog(key):
```
Dit is een belangrijke regel. **key** krijgt de waarde van de toets die ingedrukt wordt. Als je pijltje omhoog ingedrukt hebt, krijgt **key** dus de waarde van **up**.

```python
if key == 'up':
    paddle.y = paddle.y + 10
```
Als je pijltje omhoog hebt ingedrukt, kunnen wij het batje verplaatsen d.m.v. de y coördinaat.

De nieuwe waarde van **y** is de waarde die y eerst had + 10. En dan gaat deze dus omhoog.

## Stap 1: draai dit script

## Stap 2: code aanpassen
Kun je de code uitbreiden zodat het batje ook naar beneden beweegt met pijltje naar beneden?

<details>
  <summary>Klik hier voor een tip</summary>

Welk if-statement kun je toevoegen? Hoe zorg je dat **y** lager wordt?

</details>

<details>
  <summary>Vind je het lastig? Klik hier voor een voorbeeld.</summary>

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
def paddle_omhoog(key):
    if key == 'up':
        paddle.y = paddle.y + 10

@play.when_key_pressed('down')
def paddle_omlaag(key):
    if key == 'down':
        paddle.y = paddle.y - 10

play.start_program()
```

</details>

## Stap 3: het batje niet het scherm uit
Misschien vind je het vreemd dat het batje het scherm uit kan.

```python
import play

paddle = play.new_box(
            color='black',
            x=0,
            y=-300,
            width=20,
            height=100,
        )

@play.when_key_pressed('up')
def paddle_omhoog(key):
    if key == 'up':
        if DOOR_JOU_IN_TE_VULLEN:
            paddle.y = paddle.y + 10

play.start_program()
```
Wat kunnen we invullen bij **DOOR_JOU_IN_TE_VULLEN** zodat het batje niet het scherm uit gaat.
Tip:
- **play.screen.top** is een getal dat de bovenste pixel van het scherm aangeeft
- **paddle.top**: is een getal dat de bovenste pixel van het batje aangeeft.


<details>

<summary>Vind je het lastig? Klik hier voor een voorbeeld.</summary>

```py
import play

paddle = play.new_box(
            color='black',
            x=0,
            y=-300,
            width=20,
            height=100,
        )

@play.when_key_pressed('up')
def paddle_omhoog(key):
    if key == 'up':
        if paddle.top < play.screen.top:
            paddle.y = paddle.y + 10

play.start_program()
```
</details>










