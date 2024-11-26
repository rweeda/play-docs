---
sidebar_position: 2
---

# Controllers

Welke evenementen zijn er specifiek voor controllers?

### Controller knoppen

`when_button_pressed`

Wanneer een knop op de controller wordt ingedrukt wordt de functie `when_button_pressed` aangeroepen. Hierin kun je code plaatsen die je wilt uitvoeren wanneer een knop op de controller wordt ingedrukt.

Voorbeeld:
```python
@play.controller.when_button_pressed(0)
def button_clicked():
	print("Knop 0 is ingedrukt")
```
---

`when_button_released`

Wanneer een knop op de controller wordt losgelaten wordt de functie `when_button_released` aangeroepen. Hierin kun je code plaatsen die je wilt uitvoeren wanneer een knop op de controller wordt losgelaten.

Voorbeeld:
```python
@play.controller.when_button_released(0)
def button_released():
	print("Knop 0 is losgelaten")
```
---

`when_any_button_pressed`

Wanneer een knop op de controller wordt ingedrukt wordt de functie `when_any_button_pressed` aangeroepen. Hierin kun je code plaatsen die je wilt uitvoeren wanneer een knop op de controller wordt ingedrukt.

Voorbeeld:
```python
@play.controller.when_any_button_pressed
def button_pressed(button):
	print(f"Knop {button} is ingedrukt")
```
---

`when_any_button_released`

Wanneer een knop op de controller wordt losgelaten wordt de functie `when_any_button_released` aangeroepen. Hierin kun je code plaatsen die je wilt uitvoeren wanneer een knop op de controller wordt losgelaten.

Voorbeeld:
```python
@play.controller.when_any_button_released
def button_released(button):
	print(f"Knop {button} is losgelaten")
```

### Controller joysticks

`when_axis_moved`

Wanneer een joystick op de controller wordt bewogen wordt de functie `when_axis_moved` aangeroepen. Hierin kun je code plaatsen die je wilt uitvoeren wanneer een joystick op de controller wordt bewogen.

Voorbeeld:
```python
@play.controller.when_axis_moved(0)
def axis_moved(axis, value):
	print(f"Joystick {axis} is bewogen naar {value}")
```
---
`when_any_axis_moved`

Wanneer een joystick op de controller wordt bewogen wordt de functie `when_any_axis_moved` aangeroepen. Hierin kun je code plaatsen die je wilt uitvoeren wanneer een joystick op de controller wordt bewogen.

Voorbeeld:
```python
@play.controller.when_any_axis_moved
def axis_moved(axis, value):
	print(f"Joystick {axis} is bewogen naar {value}")
```

