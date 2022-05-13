import Editor from "./Editor.js";
import Image from "./Image.js";
import Inspect from "./Inspect.js";
import Rotate from "./Rotate.js";
import Resize from "./Resize.js";

const editor = new Editor()
const image = new Image(0, 1000)

const inspect = new Inspect(image)
const resize = new Resize(image, 20)
const rotate = new Rotate(image, 30)

// Inspect initial state
editor.input(inspect)

// Resize by 20%
editor.input(resize)
editor.input(inspect)

// Rotate by 30 degree
editor.input(rotate)
editor.input(inspect)

// Resize by 20% again
editor.input(resize)
editor.input(inspect)

// Rotate by 30 degree again
editor.input(rotate)
editor.input(inspect)

// Execute all commands
editor.executeCommands()