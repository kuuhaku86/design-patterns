from Editor import Editor
from Image import Image
from Inspect import Inspect
from Rotate import Rotate
from Resize import Resize

editor = Editor()
image = Image(0, 1000)

inspect = Inspect(image)
resize = Resize(image, 20)
rotate = Rotate(image, 30)

# Inspect initial state
editor.input(inspect)

# Resize by 20%
editor.input(resize)
editor.input(inspect)

# Rotate by 30 degree
editor.input(rotate)
editor.input(inspect)

# Resize by 20% again
editor.input(resize)
editor.input(inspect)

# Rotate by 30 degree again
editor.input(rotate)
editor.input(inspect)

# Execute all commands
editor.executeCommands()