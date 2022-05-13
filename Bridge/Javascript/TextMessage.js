import Message from "./Message.js";

class TextMessage extends Message {
  constructor(messageSender) {
    super(messageSender);
  }

  sendMessage(message) {
    this.messageSender.send(message);
  }
}

export default TextMessage;
