---
sidebar_position: 1
---

# SNES controller verbinden

![SNES controller](snes_controller.png)

Kan ik een spel programmeren waarbij de gebruiker een SNES controller as input gebruikt? Zeker!

## Verbinden
Verbind de SNES controller aan je computer met de USB-kabel.
Draai vervolgens het volgende script:

```python
import pygame
pygame.init()
joystick=pygame.joystick.Joystick(0)
joystick.init()
print("Joystick Name:", joystick.get_name())
```

Als het goed is, zou je iets moeten zijn wat hierop lijkt:
```
pygame 2.5.2 (SDL 2.28.3, Python 3.10.11)
Hello from the pygame community. https://www.pygame.org/contribute.html
Joystick Name: usb gamepad
```
Het belangrijkste is:
```markdown
Joystick Name: usb gamepad
```