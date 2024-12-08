---
sidebar_position: 2
---

# Opvragen van high score

Het opvragen van de high score is net zo makkelijk:

```python 
import play
from play import db

high_score = db.get_data("username")

play.new_text(str(high_score))

play.start_program()
```

## Stap 1: draai de code


