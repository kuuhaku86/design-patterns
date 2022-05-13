class Editor {
  constructor() {
    this.commandList = [];
  }

  input(command) {
    this.commandList.push(command);
  }

  executeCommands() {
    this.commandList.forEach(command => {
      command.execute();
    });

    this.commandList = [];
  }
}

export default Editor;