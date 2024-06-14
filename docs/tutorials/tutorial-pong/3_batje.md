---
sidebar_position: 4
---

# Het batje

```python
import play

box = play.new_box(color='black',
                   x=0,
                   y=0,
                   width=100,
                   height=200,
                   border_color="light blue",
                   border_width=10)

play.start_program()
```

We hebben natuurlijk wel een batje nodig om Pong te kunnen maken.

## Stap 1: code draaien
Kopieer de Python code en draai dit script.

## Stap 2: het batje verplaatsen
Het is niet zo handig dat het batje in het midden staat.
Kun jij hem aan de linkerkant van het scherm zetten?

<details>
  <summary>Klik hier voor een tip</summary>
  <p>maak **y** een lager getal. Wat gebeurt er met het batje?</p>
</details>

<details>
  <summary>Vind je het lastig? Klik hier voor een voorbeeld.</summary>
  <p>
  ```python 
import play

box = play.new_box(color='black',
                   x=0,
                   y=-300,
                   width=50,
                   height=100,
                   border_color="light blue",
                   border_width=10)

play.start_program()
    ```
  </p>
</details>

## Stap 3: het batje stylen
Kun je het batje aanpassen zodat jij het mooi vindt?

<details>
  <summary>Klik hier voor een tip</summary>
  <p>Je kunt kijken naar het veranderen van **width**, **border_color** en **border_width**.</p>
</details>

<details>
  <summary>Vind je het lastig? Klik hier voor een voorbeeld.</summary>
  <p>
  ```python 
import play

box = play.new_box(color='black',
                   x=0,
                   y=-300,
                   width=30,
                   height=100,
                   border_color="black",
                   border_width=10)

play.start_program()
    ```
  </p>
</details>




