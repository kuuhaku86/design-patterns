require_relative "Editor"
require_relative "Image"
require_relative "Inspect"
require_relative "Rotate"
require_relative "Resize"

editor = Editor.new
image = Image.new(0, 1000)

inspect = Inspect.new(image)
resize = Resize.new(image, 20)
rotate = Rotate.new(image, 30)

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
editor.executeCommands