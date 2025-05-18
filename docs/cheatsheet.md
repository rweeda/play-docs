---
sidebar_position: 99
---

# Cheatsheet

## Vormen

<details>
  <summary>Cirkel (play.new_circle)</summary>

```py
import play 

play.new_circle()

play.start_program()
```
</details>

<details>
  <summary>Vierkant of rechthoek (play.new_box)</summary>

```py
import play 

play.new_box()

play.start_program()
```
</details>

<details>
  <summary>Tekst (play.new_text)</summary>

```py
import play 

play.new_text()

play.start_program()
```
</details>

<details>
  <summary>Hoe pas ik een vorm aan? (Bijvoorbeeld de kleur)</summary>

```py
import play 

play.new_circle(color='blue')

play.start_program()
```

OF 

```py
import play 

cirkel = play.new_text()
cirkel.color = 'blue'

play.start_program()
```
</details>

<details>
  <summary>Wat kan ik aan een vorm aanpassen?</summary>

| Attribuut | Uitleg | Cirkel | Vierkant | Tekst |
|:---:|:---:|:---:|:---:|:---:|
| color   | staat standaard op 'black'. [Op deze pagina](https://www.pygame.org/docs/ref/color_list.html) zie je welke opties er zijn. | ✅ | ✅ | ✅ |
| x  | staat standaard op 0 (het midden). Lager dan 0 is naar links, boven 0 is naar rechts. | ✅ | ✅ | ✅ |
| y | staat standaard op 0 (het midden), Lager dan 0 is naar beneden, boven 0 is naar boven. | ✅ | ✅ | ✅ |
| transparency | 0 --> onzichtbaar. 100 --> volledig zichtbaar. | ✅ | ✅ | ✅ |
| border_color | de kleur van een rand, staat standaard op  'light blue' | ❌ | ✅ | ✅ |
| border_radius | de breedte van de rand, staat standaard op 0 (geen rand zichtbaar) | ❌ | ✅ | ❌ |
| width | de breedte van de rechthoek | ❌ | ✅ | ❌ |
| height | de hoogte van de rechthoek | ❌ | ✅ | ❌ |
| radius | de diameter van de cirkel | ✅ | ❌ | ❌ |
| border_width | de breedte van de rand van de cirkel | ✅ | ❌ | ❌ |
| words | de woorden die op het scherm komen te staan | ❌ | ❌ | ✅ |
| font | de font van de tkest. Kun je bijvoorbeeld aanpassen naar 'arial' | ❌ | ❌ | ✅ |
| font_size | de grootte van de font | ❌ | ❌ | ✅ |

</details>

<details>
  <summary>Hoe vraag ik informatie op over een vorm, bijvoorbeeld de kleur?</summary>
Als je iets wilt weten over een vorm, bijvoorbeeld kleur, gebeurt dit bijna altijd via **VARIABELE.ATTRIBUUT**. 

In het voorbeeld hieronder is de:
- VARIABLE **cirkel**
- ATTRIBUUT **color**

```python
import play 

cirkel = play.new_circle()

print(cirkel.color)

play.start_program()

```
Als het goed is, zie je in je **shell** of **console** nu het volgende staan: 

```
pygame 2.6.1 (SDL 2.28.4, Python 3.10.11)
Hello from the pygame community. https://www.pygame.org/contribute.html
black
```
We hebben dus opgevraagd dat **cirkel.color** de waarde **black** heeft.
Naast **color** kun je alle attributen opvragen van een vorm, bijvoorbeeld **x**, **y**, etc.

</details>

<details>
  <summary>Hoe weet ik precies de locatie van de rechterkant (right), linkerkant (left), bovenkant (top) en onderkant (bottom) van een vorm?</summary>

Dat gaat via:
- rechterkant (right)
- linkerkant (left)
- bovenkant (top)
- onderkant (bottom)

Als ik bijvoorbeeld wil weten wat de meest rechter pixel is van een cirkel, kan ik het volgende doen:

```python
import play 

cirkel = play.new_circle()

print(cirkel.right)

play.start_program()
```

Als het goed is, zie je het volgende in je **shell** of **console**
```
pygame 2.6.1 (SDL 2.28.4, Python 3.10.11)
Hello from the pygame community. https://www.pygame.org/contribute.html
100.0
```

Nu weet je dus dat de meest rechter pixel van de bal op x=100 staat.
</details>

## Fysica

<details>
  <summary>Hoe voeg ik fysica toe aan een vorm? (start_physics)</summary>

```py
import play 

cirkel = play.new_circle()
cirkel.start_physics()

play.start_program()
```
</details>

<details>
  <summary>Hoe verander ik de fysica van een vorm? (start_physics)</summary>

```py
import play 

cirkel = play.new_circle()
cirkel.start_physics(obeys_gravity=False)

play.start_program()
```

OF (nuttig als je iets wil veranderen tijdens het spel)

```py
import play 

cirkel = play.new_circle()
cirkel.start_physics()

cirkel.physics.obeys_gravity = False

play.start_program()
```

</details>


<details>
  <summary>Wat kan ik allemaal aanpassen aan de fysica? (start_physics)</summary>

| Attribuut | Uitleg | 
|:---:|:---:|
| obeys_gravity | True --> zwaartekracht wordt nagedaan, False --> geen zwaartekracht | 
| x_speed | hoe hard wil je dat de bal beweegt op de horizontale as? | 
| y_speed | hoe hard wil je dat de bal beweegt op de verticale as? | 
| can_move | True --> de vorm mag bewegen, False, de vorm staat altijd stil | 
| stable | True --> als iets botst tegen vorm, zal deze niet bewegen, False, de vorm zal bewegen bij een botsing.
| bounciness | 1.0 vorm kaatst net zo hard terug als dat deze aankwam. 0 --> vorm kaatst niet terug bij botsing | 
| mass | hoe 'zwaar' is je vorm?  Dit kan snel ingewikkeld worden. Maar je kan je voorstellen dat een botsing anders is tussen twee vormen die even zwaar zijn in plaats van als vormen verschillend gewicht hebben. | 
| friction | 0 --> geen frictie (energie blijft behouden). | 
</details>


<details>
  <summary>Hoe zet ik de fysica op pauze en weer aan? (.phyiscs.pause() & .physics.unpause())</summary>

Met **.physics.pause** zet je de fysica op pauze en met **.physics.unpause** zet je de fysica weer aan.

Een voorbeeld met **pause**:
```python
import play 

cirkel = play.new_circle()
cirkel.start_physics()
cirkel.physics.pause()

play.start_program()
```

Een voorbeeld met ook **unpause**:

```python
import play 

cirkel = play.new_circle()
cirkel.start_physics()
cirkel.physics.pause()
cirkel.physics.unpause()

play.start_program()
```


</details>

<details>
  <summary>Hoe zet ik de fysica uit? (stop_physics())</summary>

Met **stop_physics()** zet je de physics uit.

```python
import play 

cirkel = play.new_circle()
cirkel.start_physics()
cirkel.stop_physics()
play.start_program()
```
</details>

## Acties

<details>
  <summary>Hoe maak een ik vorm onzichtbaar (hide)?</summary>

Hiermee teken je een cirkel en maak je hem onmiddelijk onzichtbaar.

Let op: .hide() verandert het volgende:
- **cirkel.is_hidden** krijgt de waarde **True**
- **cirkel.is_shown** krijgt de waarde **False**
- Als je fysica gebruikt, gaat die op pauze :)

```py
import play 

cirkel = play.new_circle()
cirkel.hide()

play.start_program()
```
</details>

<details>
  <summary>Hoe maak een ik vorm weer zichtbaar (show)?</summary>

Hiermee teken je een cirkel en maak je hem onmiddelijk onzichtbaar en weer zichtbaar

Let op: .show() verandert het volgende:
- **cirkel.is_hidden** krijgt de waarde **False**
- **cirkel.is_shown** krijgt de waarde **True**
- Als je fysica gebruikte, gaat deze weer aan en weer werken

```py
import play 

cirkel = play.new_circle()
cirkel.hide()
cirkel.show()

play.start_program()
```
</details>


<details>
  <summary>Hoe verwijder ik een vorm? (remove)?</summary>

Allereerst een vraag: heb je dit echt nodig of is **.hide()** misschien ook al genoeg?
Met **.remove()**:
- verwijder je de vorm
- je kunt opvragen of de vorm 'leeft' via **cirkel.is_alive()**. Deze is **False** als de vorm verwijderd is.

```py
import play 

cirkel = play.new_circle()
cirkel.remove()

play.start_program()
```

</details>

## Gebeurtenissen
<details>
  <summary>Bij de start van het programma (@play.when_program_starts)</summary>

  ```py
  import play

  @play.when_program_starts
  def setup_game():
      play.new_text(words="Welkom!")      

  play.start_program()
  ```
</details>

<details>
  <summary>Bij het indrukken van één specifieke toets (@play.when_key_pressed)</summary>

Je gebruikt **@play.when_key_pressed** om te checken of een toets ingedrukt wordt. Wat je tussen de haakjes zet (in dit geval 'space') is welke toets gedetecteerd wordt.

  ```python
  import play

  box = play.new_box()

  @play.when_key_pressed("space")
  def spatie_ingedrukt():
    box.x = box.x + 10
      
  play.start_program()
  ```
</details>

<details>
  <summary>Bij het indrukken van twee or meerdere toetsen (@play.when_key_pressed)</summary>

Als je met meerdere toetsen te maken hebt, heb je in ieder geval twee opties. 
- twee losse **@play.when_key_pressed** gebeurtenissen
- één **play.when_key_pressed** gebeurtenis

**twee @play.when_key_pressed gebeurtenissen**

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

OF

**één @play.when_key_pressed gebeurtenis**
Let op, nu heb je **key** nodig.

```python
import play

box = play.new_box()

@play.when_key_pressed("down", "up")
def omhoog_of_omlaag(key):
  if key == 'up':
    box.y = box.y + 10
  if key == 'down':
    box.y = box.y - 10
    
play.start_program()
```


</details>

<details>
  <summary>Bij het loslaten van één specifieke toets (@play.when_key_released)</summary>

Je gebruikt **@play.when_key_released** om te checken of een toets losgelaten wordt. 

```python
import play

box = play.new_box()

@play.when_key_released("up")
def omhoog():
  box.y = box.y + 10
    
play.start_program()
```
</details>


<details>
  <summary>Bij het loslaten van twee of meerdere toetsen (@play.when_key_released)</summary>

Als je met meerdere toetsen te maken hebt, heb je in ieder geval twee opties. 
- twee losse **@play.when_key_released** gebeurtenissen
- één **play.when_key_released** gebeurtenis

**twee @play.when_key_released gebeurtenissen**

```python
import play

box = play.new_box()

@play.when_key_released("up")
def omhoog():
  box.y = box.y + 10

@play.when_key_released('down')
def omlaag():
  box.y = box.y - 10
    
play.start_program()
```

OF

**één @play.when_key_released gebeurtenis**
Let op, nu heb je **key** nodig.

```python
import play

box = play.new_box()

@play.when_key_released("down", "up")
def omhoog_of_omlaag(key):
  if key == 'up':
    box.y = box.y + 10
  if key == 'down':
    box.y = box.y - 10
    
play.start_program()
```


</details>

<details>
  <summary>Bij het indrukken van een willekeurige toets (@play.when_any_key_pressed)</summary>

  Met **@play.when_any_key_pressed** kun je een functie uitvoeren zodra welke toets dan ook op het toetsenbord wordt ingedrukt. Met **key** kun je dan weten welke toets ingedrukt wordt.

  ```python
  import play

  instructie_tekst = play.new_text("Druk op een toets", y=50)
  feedback_tekst = play.new_text(words="", y=0)

  @play.when_any_key_pressed
  def handel_toets_af(key):
    feedback_tekst.words = f"Je drukte op: {key}"
      
  play.start_program()
```
</details>


<details>
  <summary>Bij het loslaten van een willekeurige toets (@play.when_any_key_released)</summary>

  Met **@play.when_any_key_released** kun je een functie uitvoeren zodra welke toets dan ook op het toetsenbord wordt losgelaten. Met **key** kun je dan weten welke toets losgelaten wordt.

```python
import play

instructie_tekst = play.new_text("Laat een toets los", y=50)
feedback_tekst = play.new_text(words="", y=0)

@play.when_any_key_released
def toets_wordt_losgelaten(key):
  feedback_tekst.words = f"Je liet los: {key}"
    
play.start_program()
```
</details>

- Bij het indrukken van de muis (@play.when_mouse_clicked)
- Bij het loslaten van de muis (@play.when_click_released)

<details>
<summary>Bij elk frame (@play.repeat_forever)</summary>

```python
import play

frames=0
play.new_text('Aantal frames sinds start:', y=100)
tekst = play.new_text(words=str(frames))

@play.repeat_forever
def altijd():
  global frames
  frames = frames + 1
  tekst.words = str(frames)

play.start_program()
```

</details>


## Gebeurtenis bij een vorm
- @VARIABLE.when_stopped_touching
- Wanneer twee vormen elkaar raken (@VARIABLE.when_touching)
- @VARIABELE.when_touching
- @VARIABELE.when_stopped_touching_wall
- @VARIABLE.when_touching_wall
- @VARIABLE.when_touching
- @VARIABLE.when_clicked
