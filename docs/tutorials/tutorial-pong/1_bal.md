---
sidebar_position: 2
---

# De bal

```python 
import play

ball = play.new_circle(color='black',
                       x=0,
                       y=0,
                       radius=100,
                       border_color="light blue",
                       border_width=10,
                       transparency=100)


play.start_program()
```

### Stap 1: draai de code
Analyseer de code en voer hem uit op je computer (kopieer hem naar je editor en draai de code)

### Stap 2: maak de bal kleiner

<details>
  <summary>Klik hier voor een tip</summary>
  <p>Pas **radius** aan</p>
</details>

<details>
  <summary>Vind je het lastig? Klik hier voor een voorbeeld.</summary>
  <p>
  ```python 
import play

ball = play.new_circle(color='black',
                       x=0,
                       y=0,
                       radius=10,
                       border_color="light blue",
                       border_width=10,
                       transparency=100)


play.start_program()
    ```
  </p>
</details>


### Stap 3: maak de bal 1 kleur

<details>
  <summary>Klik hier voor een tip</summary>
  <p>Wat hebben **color**, **border_color** en **border_width** met elkaar te maken?</p>
</details>

<details>
  <summary>Vind je het lastig? Klik hier voor een voorbeeld.</summary>
  <p>
  ```python 
import play

ball = play.new_circle(color='black',
                       x=0,
                       y=0,
                       radius=100,
                       border_color="black",
                       border_width=0,
                       transparency=100)


play.start_program()
    ```
  </p>
</details>

### Stap 4: verplaats de bal
Zet de bal op x=100, x=-100. waar is dat op het scherm?
