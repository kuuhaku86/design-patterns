import TextMessageSender from "./TextMessageSender.js";
import TextMessage from "./TextMessage.js";

const textMessageSender = new TextMessageSender();
const textMessage = new TextMessage(textMessageSender);

// Test for sending message
textMessage.sendMessage("Hi design pattern");

// Test for sending another message
textMessage.sendMessage("Hi world!");