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

Wat kan ik aanpassen aan een cirkel?
Hierbij de lijst van attributen voor een cirkel:
- **color**: staat standaard op 'black'. [Op deze pagina](https://www.pygame.org/docs/ref/color_list.html) zie je welke opties er zijn.
- **x**: staat standaard op 0 (het midden). Lager dan 0 is naar links, boven 0 is naar rechts.
- **y**: staat standaard op 0 (het midden), Lager dan 0 is naar beneden, boven 0 is naar boven.
- **radius**: staat standaard op 100. Hoe groter de waarde, hoe groter de cirkel.
- **border_color**: staat standaard op  'light blue'. Let op, als de **border_width** 0 is, zie je de rand niet.
- **border_width**: the breedte van de rand. Staat standaard op 0 (geen rand zichtbaar)
- **transparency**: 0 --> onzichtbaar. 100 --> volledig zichtbaar.

</details>

<details>
  <summary>Vierkant of rechthoek (play.new_box)</summary>

```py
import play 

play.new_box()

play.start_program()
```

Net zoals bij **play.new_circle** heeft het programma voor ons nu ook al de kleur en grootte bepaald. Je kunt dit zelf natuurlijk aanpassen!
Dit zijn de attributen voor **play.new_box**:
- **color**: staat standaard op 'black'. [Op deze pagina](https://www.pygame.org/docs/ref/color_list.html) zie je welke opties er zijn.
- **x**: staat standaard op 0 (het midden). Lager dan 0 is naar links, boven 0 is naar rechts.
- **y**: staat standaard op 0 (het midden), Lager dan 0 is naar beneden, boven 0 is naar boven.
- **width**: de breedte van de rechthoek.
- **height**: de hoogte van de rechthoek.
- **border_color**: staat standaard op  'light blue'. Let op, als de **border_width** 0 is, zie je de rand niet.
- **border_radius**: the breedte van de rand. Staat standaard op 0 (geen rand zichtbaar)
- **transparency**: 0 --> onzichtbaar. 100 --> volledig zichtbaar.

</details>

<details>
  <summary>Tekst (play.new_text)</summary>

```py
import play 

play.new_text()

play.start_program()
```

Je kunt voor **play.new_text** kiezen uit:
- **words**: de woorden die op het scherm komen te staan
- **x**: staat standaard op 0 (het midden). Lager dan 0 is naar links, boven 0 is naar rechts.
- **y**: staat standaard op 0 (het midden), Lager dan 0 is naar beneden, boven 0 is naar boven.
- **font**: de font van de tekst. Kun je bijvoorbeeld aanpassen naar 'arial'.
- **font_size**: de grootte van de font.
- **color**: de kleur van de tekst.

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
pygame-ce 2.5.3 (SDL 2.30.12, Python 3.10.11)
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

<details>
  <summary>Bij het indrukken van de muis (@play.when_mouse_clicked)</summary>

**when_mouse_clicked** gebruik je voor om een muisklik te detecteren.

```python
import play

# Maak een cirkel
circle = play.new_circle(color="blue")

# Deze functie wordt uitgevoerd als je op de muis klikt
@play.when_mouse_clicked
def muis_geklikt():
  if circle.color == "blue":
    circle.color = "red"
  else:
    circle.color = "blue"
  print("Muis geklikt! De cirkel is nu " + str(circle.color))

# Start het programma
play.start_program()
```
</details>

<details>
  <summary>Bij het loslaten van de muis (@play.when_click_released)</summary>

Let op, deze gebeurtenis gebeurt pas als je de muis loslaat.

```python
import play

# Maak een cirkel
circle = play.new_circle(color="blue")

# Deze functie wordt uitgevoerd als je op de muis klikt
@play.when_click_released
def muis_geklikt():
  if circle.color == "blue":
    circle.color = "red"
  else:
    circle.color = "blue"
  print("Muis geklikt! De cirkel is nu " + str(circle.color))

# Start het programma
play.start_program()
```
</details>

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

<details>
  <summary>Wanneer een vorm stopt met het aanraken van een andere vorm (@VARIABLE.when_stopped_touching)</summary>

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
````
</details>

<details>
  <summary>Wanneer een vorm stopt met het aanraken van de muur (@VARIABLE.when_stopped_touching_wall)</summary>

```python
import play

bal = play.new_circle(color="blue", radius=50)
bal.start_physics(obeys_gravity=False, x_speed=60)

text = play.new_text(words="muur is niet aangeraakt", y=200)

@bal.when_stopped_touching_wall
def aangeraakt():
    text.words = 'muur is aangeraakt'

play.start_program()
```
</details>


- Wanneer twee vormen elkaar raken (@VARIABLE.when_touching)
- Wanneer een vorm de muur aanraakt (@VARIABLE.when_touching_wall)
- Wanneer op een vorm geklikt wordt (@VARIABLE.when_clicked)

## Tijd

<details>
  <summary>Ik wil tijdelijk iets veranderen aan een vorm, bijvoorbeeld de snelheid (async await)</summary>

```python
import play

ball = play.new_circle(color='black')
ball.start_physics(obeys_gravity=False, x_speed=10)

@play.when_mouse_clicked
async def tijdelijk_sneller():
    ball.physics.x_speed = 30
    await play.timer(seconds=1)
	ball.physics.x_speed = 10
	

play.start_program()
```

</details>

<details>
  <summary>Hoe maak ik een timer?</summary>

```python
import play
 
time = 10
text = play.new_text(str(time))
print(time)
 
@play.repeat_forever
async def timer():
    global time
    if time > 0:
        time -= 1
        await play.timer(seconds=1)
        text.words = str(time)
play.start_program()
```
</details>
