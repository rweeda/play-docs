---
sidebar_position: 6
---

# Een score

```python
import play

tekst_links = play.new_text(
    words='standaard tekst',  # dit is de tekst aan het begin
    x=0,
    y=0,
)

play.start_program()
```

Wat is Pong zonder dat we de score bijhouden?

## Stap 1: code draaien
Bekijk hoe de tekst nu zichtbaar is op het scherm door dit script te draaien.

## Stap 2: de tekst aanpassen
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

## Stap 3: Een tekst en een getal --> geen vrienden
Wat gebeurt er als je de volgende code uitvoert?
```python
import play

tekst_links = play.new_text(
    words=0,  # dit is de tekst aan het begin
    x=0,
    y=0,
)

play.start_program()
```

Als het goed is, krijg je een foutmelding.
Dit komt doordat je **0** opgeeft als waarde voor **words**, maar die verwacht tekst en geen getal. Dus je krijgt een foutmelding. 

## Stap 4: een getal en een tekst --> toch vrienden
We gaan gebruik maken van de functie **str**, waarbij we van een getal een tekst kunnen maken. Daarbij gaan we met een variabele de score bijhouden.

```python
import play

score = 0

tekst_links = play.new_text(
    words=str(score),  # str zorgt ervoor dat de score een tekst wordt
    x=0,
    y=0,
)

score = score + 1

tekst_links.words = str(score)

play.start_program()
```
Wat gebeurt hier precies?

```python
score = 0
```
We zetten de variabele score op de waarde 0.

```python
tekst_links = play.new_text(
    words=str(score),  # str zorgt ervoor dat de score een tekst wordt
    x=0,
    y=0,
)
```
We maken een tekst waarbij we van het getal 0 de tekst '0' maken via de **str** functie.

```python
score = score + 1
```
We verhogen score met 1. Let op, dit zorgt er nog niet voor dat de score op het scherm ook aangepast is!

````python
tekst_links.words = str(score)
````
Pas met dit stukje code veranderen we ook een tekst op het scherm met de nieuwe waarde van score.





