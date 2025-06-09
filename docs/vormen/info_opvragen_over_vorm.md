---
sidebar_position: 7
---

# 1.6 Informatie opvragen over een vorm

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
pygame-ce 2.5.3 (SDL 2.30.12, Python 3.10.11)
black
```
We hebben dus opgevraagd dat **cirkel.color** de waarde **black** heeft.
Naast **color** kun je alle attributen opvragen van een vorm, bijvoorbeeld **x**, **y**, etc.