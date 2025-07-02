---
sidebar_position: 6
---

# 5. Gebeurtenissen bij een vorm
Zodra je aan de gang gaat met fysica, beweegt bijvoorbeeld een bal vanzelf.
Die kan zomaar tegen een andere vorm aanbotsen en kaatst weer terug.
Maar hoe weet je eigenlijk in je code dat deze terugkaatst?
Hiervoor moeten we de code iets ingewikkelder maken!

```python
import play

bal = play.new_circle(color="blue", radius=50)
bal.start_physics(obeys_gravity=False, x_speed=60)

batje = play.new_box(x=300)
batje.start_physics(can_move=False, obeys_gravity=False)

text = play.new_text(words="batje is niet aangeraakt", y=200)

@bal.when_stopped_touching(batje)
def aangeraakt():
    text.words = 'batje is aangeraakt'
    
play.start_program()
```

Wat gebeurt hier?

```python
bal = play.new_circle(color="blue", radius=50)
bal.start_physics(obeys_gravity=False, x_speed=60)
```
We maken een cirkel die niet naar beneden valt (obeys_gravity=False) en die naar rechts beweegt (x_speed=60).

```python
batje = play.new_box(x=300)
batje.start_physics(can_move=False, obeys_gravity=False)
```
We maken een batje die niet kan bewegen (can_move=False) en die niet naar beneden valt (obeys_gravity=False).


```python
text = play.new_text(words="batje is niet aangeraakt", y=200)
```
We maken een tekst :)

```python
@bal.when_stopped_touching(batje)
```
Let heel goed op!
- **bal** wijst hier naar de **variabele** bal. Deze variabele wijst naar de gemaakte cirkel.
- **batje** wijst hier naar de **variabele** batje. Deze variabele wijst naar de gemaakte batje.
Als onze bal dus botst tegen ons batje en terugkaatst, dan is deze gebeurtenis waar.

```python
def aangeraakt():
    text.words = 'batje is aangeraakt'
```
Wanneer de gebeurtenis gebeurt, dan veranderen we de tekst.


