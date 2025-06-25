---
sidebar_position: 1
hide_table_of_contents: true
---

# 3.1 Een actie
Naast dat je "eigenschappen" zoals kleur, grootte, positie, etc. kan veranderen, kun je ook acties uitvoeren op je vormen.
Een voorbeeld hiervan is **verbergen**.

```python
import play 

cirkel = play.new_circle()
cirkel.hide()

play.start_program()
```

Wat gebeurt hier?

```python
cirkel = play.new_circle()
```
Met **play.new_circle** maak je de cirkel en **cirkel =** zorgt ervoor dat we de variable **cirkel** kunnen gebruiken om de cirkel te veranderen.

```python
cirkel.hide()
```
Met **cirkel.hide()** verberg je de cirkel.
De actie wordt dus gedaan met **hide()**. Vergeet niet de haakjes!

## 3.1.1 En weer tevoorschijn
Met **show()** laat je cirkel weer zien

```python
import play 

cirkel = play.new_circle()
cirkel.hide()
cirkel.show()

play.start_program()
```
