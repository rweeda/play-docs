---
sidebar_position: 1
---

# Muis

Welke evenementen zijn er specifiek voor de muis?

`when_clicked`

Wanneer de muis wordt geklikt wordt de functie `when_clicked` aangeroepen. Hierin kun je code plaatsen die je wilt uitvoeren wanneer de muis wordt geklikt.

Voorbeeld:
```python
@play.mouse.when_clicked
def mouse_clicked():
	print("De muis is geklikt")
```
---
`when_click_released`

Wanneer de muis wordt losgelaten wordt de functie `when_click_released` aangeroepen. Hierin kun je code plaatsen die je wilt uitvoeren wanneer de muis wordt losgelaten.

Voorbeeld:
```python
@play.mouse.when_click_released
def click_released():
	print("De muis is losgelaten")
```

