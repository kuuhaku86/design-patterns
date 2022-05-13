import IMessageSender from "./IMessageSender.js";

class TextMessageSender extends IMessageSender {
  send(message) {
    console.log(`Message: ${message}`);
    console.log(`Send with TextMessageSender`);
    console.log(`Message sent successfully`);
  }
}

export default TextMessageSender;