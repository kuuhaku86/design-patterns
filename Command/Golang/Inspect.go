package main

type Inspect struct	{
	Target 		*Image
}

func (command Inspect) execute() {
	command.Target.inspect()
}