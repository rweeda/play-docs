---
sidebar_position: 2
---

# Eerste beweging

Tijd voor beweging!~


```python 
import play 

cirkel = play.new_circle()
cirkel.start_physics()

play.start_program()
```

Wat gebeurt er als je dit codefragment draait?
Als je het goed is, zie je bal bewegen.
Dit komt door de regel **cirkel.start_physics()**.
**play** is nu aan het proberen om natuurkunde na te doen.

## Zwaartekracht uit en horizontaal bewegen
Laten we de zwaartekracht eens uitzetten en de bal laten bewegen van links naar rechts.
Dit kan met de volgende twee attributen:
- **obeys_gravity**: True --> zwaartekracht wordt nagedaan, False --> geen zwaartekracht
- **x_speed**: hoe hard wil je dat de bal beweegt op de horizontale as? 

```python
import play

cirkel = play.new_circle()
cirkel.start_physics(obeys_gravity=False, x_speed=60)

play.start_program()
```
Als het goed is, zie je bal heen en weer bewegen.

## Opdracht X.X Windows screensaver
Een tijd lang was de Windows screensaver een vormpje dat schuin omhoog bewoog en men was blij als deze precies de hoek raakte.
Kun je deze namaken? Tip: gebruik ook **y_speed**.

```python 
import play 

cirkel = play.new_circle()
cirkel.start_physics()

play.start_program()
```

## Wat kan ik allemaal aanpassen?
Deze drie heb je net geleerd:
- **x_speed**: hoe hard wil je dat de bal beweegt op de horizontale as? 
- **y_speed**: hoe hard wil je dat de bal beweegt op de verticale as? 
- **obeys_gravity**: True --> zwaartekracht wordt nagedaan, False --> geen zwaartekracht

Deze vijf worden later nuttig, maar ze staan er nu voor de compleetheid:
- **can_move**: True --> de vorm mag bewegen, False, de vorm staat altijd stil
- **stable**: True --> als iets botst tegen de vorm, zal deze niet bewegen, False, de vorm zal bewegen bij een botsing.
- **bounciness**: 1.0 vorm kaatst net zo hard terug als dat deze aankwam. 0 --> vorm kaatst niet terug bij botsing
- **mass**: hoe 'zwaar' is je vorm? Dit kan snel ingewikkeld worden. Maar je kan je voorstellen dat een botsing anders is tussen twee vormen die even zwaar zijn in plaats van als vormen verschillend gewicht hebben.
- **friction**: 0 --> geen frictie (energie blijft behouden).



