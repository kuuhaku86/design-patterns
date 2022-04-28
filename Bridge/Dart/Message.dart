import 'IMessageSender.dart';

abstract class Message {
  IMessageSender? messageSender;

  Message(this.messageSender);

  void sendMessage(String message);
}
