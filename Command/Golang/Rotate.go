package main

type Rotate struct	{
	Target 		*Image
	Degree	 	int
}

func (command Rotate) execute() {
	command.Target.rotate(command.Degree)
}