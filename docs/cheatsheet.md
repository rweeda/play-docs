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
````

</details>

## Gebeurtenissen
- @play.when_program_starts
- @play.when_key_pressed
- @play.when_key_released
- @play.when_any_key_pressed
- @play.when_any_key_released
- @play.when_mouse_clicked
- @play.when_click_released
- @play.repeat_forever

## Gebeurtenis bij een vorm
- @VARIABLE.when_stopped_touching
- @VARIABLE.when_touching
- @VARIABELE.when_stopped_touching_wall
- @VARIABLE.when_touching_wall
- @VARIABLE.when_clicked
