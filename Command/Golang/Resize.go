package main

type Resize struct	{
	Target 		*Image
	Percentage 	int
}

func (command Resize) execute() {
	command.Target.resize(command.Percentage)
}