---
sidebar_position: 5
---

# Het batje bewegen

```python
import play 

paddle = play.new_box(
            color='black',
            x=0,
            y=-300,
            width=20,
            height=100,
        )

@play.repeat_forever
def beweeg_paddle():
    if play.io.keypress.key_is_pressed('up'):
        paddle.y = paddle.y + 10

play.start_program()
```

We moeten het batje wel kunnen bewegen. Maar hoe?

Met het volgende if-statement checken we of de gebruiker pijltje omhoog ingeduwd heeft:

```python
if play.io.keypress.key_is_pressed('up'):
```

als dit zo is, kunnen wij het batje verplaatsen d.m.v.van de y coördinaat.

```python
paddle.y = paddle.y + 10
```
De nieuwe waarde van **y** is de waarde die y eerst had + 10. En dan gaat deze dus omhoog.

## Stap 1: draai dit script

## Stap 2: code aanpassen
Kun je de code uitbreiden dat het batje ook naar beneden beweegt met pijltje naar beneden?

<details>
  <summary>Klik hier voor een tip</summary>
  <p>Welk if-statement kun je toevoegen? Hoe zorg je dat **y** lager wordt?</p>
</details>

<details>
  <summary>Vind je het lastig? Klik hier voor een voorbeeld.</summary>
  <p>
  ```python 
import play 

paddle = play.new_box(
            color='black',
            x=0,
            y=-300,
            width=20,
            height=100,
        )

@play.repeat_forever
def beweeg_paddle():
    if play.io.keypress.key_is_pressed('up'):
        paddle.y = paddle.y + 10
    if play.io.keypress.key_is_pressed('down'):
        paddle.y = paddle.y - 10

play.start_program()
    ```
  </p>
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

@play.repeat_forever
def beweeg_paddle():
    if play.io.keypress.key_is_pressed('up'):
        if DOOR_JOU_IN_TE_VULLEN:
            paddle.y = paddle.y + 10

play.start_program()
```
Wat kunnen we invullen bij **DOOR_JOU_IN_TE_VULLEN** zodat het batje niet het scherm uit gaat.
Tip:
- **play.screen.top** is een getal dat de bovenste pixel van het scherm aangeeft
- **paddle.top**: is een getal dat de bovenste pixel van het batje aangeeft.










