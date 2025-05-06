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
