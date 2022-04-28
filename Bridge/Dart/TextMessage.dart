import 'IMessageSender.dart';
import 'Message.dart';

class TextMessage extends Message {
  TextMessage(IMessageSender messageSender) : super(messageSender);

  @override
  void sendMessage(String message) {
    print("Message processed to sender");

    messageSender?.send(message);
  }
}
