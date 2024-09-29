---
sidebar_position: 7
---

# De score aanpassen bij pijltje omhoog

Voor de leerlingen die Informatica-ACTIEF als methode hebben, is dit het moment om [Hoofdstuk 6 - Functies (deel 2)](https://moodle.informatica-actief.nl/course/view.php?id=1117#section-9) te gaan doen :).


```python
import play

score = 0
tekst_links = play.new_text(
    words=str(score),  # str zorgt ervoor dat de score een tekst wordt
    x=0,
    y=0,
)

@play.when_key_pressed('up')
def score_ophogen(key):
    if key == 'up':
        score = score + 1
        tekst_links.words = str(score)

play.start_program()
```

## Stap 1: probeer te snappen wat er misgaat
Draai het codefragment. Wat gaat er mis? En waarom?

<details>
  <summary>Klik hier voor een tip</summary>

Het heeft iets te maken met het bereik van **score**. Mag deze wel van waarde veranderen binnen de functie?

</details>

<details>
  <summary>Vind je het lastig? Klik hier voor het antwoord.</summary>

**score** is aangemaakt buiten de functie **score_ophogen**. Je mag de waarde van de variabele niet veranderen binnen de functie **score_ophogen**

</details>

## Stap 1: global to the rescue
Maar hoe zorgen we ervoor dat we score wel kunnen veranderen binnen de functie? Nou, zo:

```python
import play

score = 0
tekst_links = play.new_text(
    words=str(score),  # str zorgt ervoor dat de score een tekst wordt
    x=0,
    y=0,
)

@play.when_key_pressed('up')
def score_ophogen(key):
    global score
    if key == 'up':
        score = score + 1
        tekst_links.words = str(score)

play.start_program()
```

Met het woord **global** geven we Python het recht om score te veranderen binnen de functie, ook al is deze buiten de functie gemaakt.





