import Command from "./Command.js";

class CreateCommand extends Command {
  describe() {
    console.log("Create file" + this.file);
  }
}

export default CreateCommand;