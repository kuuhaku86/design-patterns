import 'IMessageSender.dart';
import 'Message.dart';
import 'TextMessage.dart';
import 'TextMessageSender.dart';

void main(List<String> args) {
  IMessageSender messageSender = TextMessageSender();
  Message message = TextMessage(messageSender);

  // Test for sending message
  message.sendMessage("Hello Design Patter!");

  // Test for sending second message
  message.sendMessage("Hello Design Patter! Again!");
}
