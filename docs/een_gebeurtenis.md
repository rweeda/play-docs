---
sidebar_position: 5
hide_table_of_contents: true
---

# 4. Gebeurtenissen
Als ik spatie intyp, wil ik graag dat iets beweegt..... kan dat?
Zeker!

```python
import play

box = play.new_box()

@play.when_key_pressed("space")
def spatie_ingedrukt():
  box.x = box.x + 10
    
play.start_program()
```
Wat gebeurt hier allemaal?

```python
@play.when_key_pressed("space")
```
Dit is de gebeurtenis. De gebeurtenis heet dus **when_key_pressed**.
We moeten de gebeurtenis wel vertellen bij welke toets we iets willen doen, in dit geval **space** wat natuurlijk staat voor spatie.

```python
def spatie_ingedrukt():
    box.x = box.x + 10 
```
Direct onder de gebeurtenis plaatsen we een functie **spatie_ingedrukt**.
Deze functie wordt uitgevoerd zodra de gebeurtenis gebeurt, in dit geval het indrukken van de spatiebalk.


### Opdracht 4.1 ook links en rechts
Begin met het onderstaande codefragment en pas het aan zodat het aan de volgende eisen voldoet (voeg twee functies toe):
- de box beweegt naar links bij pijltje naar links ('left')
- de box beweegt naar rechts bij pijltje naar rechts ('right')
- in plaats van **when_key_pressed** gebruik je **when_key_released** voor alle vier gebeurtenissen


```python
import play

box = play.new_box()

@play.when_key_pressed("up")
def omhoog():
  box.y = box.y + 10

@play.when_key_pressed('down')
def omlaag():
  box.y = box.y - 10
    
play.start_program()
```

<details>
  <summary>Klik hier voor de oplossing</summary>

```python
import play

box = play.new_box()

@play.when_key_released("up")
def omhoog():
  box.y = box.y + 10

@play.when_key_released('down')
def omlaag():
  box.y = box.y - 10

@play.when_key_released("left")
def omhoog():
  box.x = box.x - 10

@play.when_key_released('right')
def omlaag():
  box.x = box.x + 10
    
play.start_program()
```
</details>