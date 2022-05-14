import Command from "./Command.js";

class DeleteCommand extends Command {
  describe() {
    console.log("Delete file" + this.file);
  }
}

export default DeleteCommand;
