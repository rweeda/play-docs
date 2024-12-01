---
sidebar_position: 3
---

# Tijdelijk sneller met async await?

Ok, dat werkte niet. We moeten een manier hebben om alleen één functie te laten wachten
terwijl de rest van het spel doorgaat.
Laten we eens async await proberen:

```python 
import play

ball = play.new_circle(
    color='black',
    x=0,  # dit is het midden horizontaal
    y=0,  # dit is het midden verticaal
    radius=40,
)

ball.start_physics(obeys_gravity=False,
                   x_speed=10)

@play.when_mouse_clicked
async def tijdelijk_sneller():
    ball.physics.x_speed = 30
    await play.timer(seconds=1)
	ball.physics.x_speed = 10
	

play.start_program()
```

## Stap 1: draai de code
Beweegt de bal tijdelijk sneller?

## Stap 2: Hoe werkt dit?

```python
async def tijdelijk_sneller():
```
We hebben **async** voor **def** gezet. Dit maakt het een asynchronous functie, oftewel alles kan doorgaan en deze functie kan even wachten tot deze weer meedoet met de rest.

```python
    ball.physics.x_speed = 30
```
We zetten de x_speed van de bal op 30 pixels.

```python
    await play.timer(seconds=1)
```
We wachten 1 seconde. 

```python
	ball.physics.x_speed = 10
```
We zetten de x_speed weer op 10 pixels.
