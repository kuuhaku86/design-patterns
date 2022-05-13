class Message {
  constructor(messageSender) {
    this.messageSender = messageSender;
  }

  sendMessage(message) {
    throw new Error('Not implemented');
  }
}

export default Message;