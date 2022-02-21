package main

type Editor struct {
	Commands []ICommand
}

func (editor *Editor) input(command ICommand) {
	editor.Commands = append(editor.Commands, command)
}

func (editor *Editor) executeCommands() {
	for _, command := range editor.Commands {
		command.execute()
	}

	editor.Commands = []ICommand{}
}
