package main

func main() {
	editor := Editor{
		Commands: []ICommand{},
	}
	image := Image{
		ImagePosition: 	0,
		ImageSize:	  	1000,
	}

	inspect := Inspect{
		Target: &image,
	}
	rotate := Rotate{
		Target: 	&image,
		Degree: 	30,
	}
	resize := Resize{
		Target:		&image,
		Percentage:	20,
	}

	// Inspect initial state
	editor.input(inspect)

	// Resize by 20 percent
	editor.input(resize)
	editor.input(inspect)

	// Rotate by 30 degree
	editor.input(rotate)
	editor.input(inspect)

	// Resize by 20 percent again
	editor.input(resize)
	editor.input(inspect)

	// Rotate by 30 degree again
	editor.input(rotate)
	editor.input(inspect)

	// Execute all commands
	editor.executeCommands()
}