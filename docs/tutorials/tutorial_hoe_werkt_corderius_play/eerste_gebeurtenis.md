---
sidebar_position: 3
---

# Eerste gebeurtenis

We gaan nu twee ingewikkelde zaken toevoegen:
- een event
- een functie 

Kijk goed naar de code hieronder:

```python
import play 

cat = play.new_text('Klik me', font_size=70)

@cat.when_clicked
def geklikt():
    cat.words = 'Je hebt me geklikt!'

play.start_program()
```

Wat gebeurt hier?

```python
@cat.when_clicked
```
Als er op de tekst geklikt wordt die hoort bij de variable **cat**

```python
def geklikt():
    cat.words = 'Je hebt me geklikt!'
```
Dan wordt de functie die er precies onder staat uitgevoerd.
In dit geval dat de woorden van de tekst veranderen.

## Zijn er meer events?
Zeker weten! Als je benieuwd bent, kun je deze bekijken op: [Animation and control commands](https://github.com/Corderius-College-Amersfoort/play?tab=readme-ov-file#animation-and-control-commands)
