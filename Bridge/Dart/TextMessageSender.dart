import 'IMessageSender.dart';

class TextMessageSender extends IMessageSender {
  @override
  void send(String message) {
    print('Message: $message');
    print('Send with text message sender');
    print('Message send successfully\n');
  }
}
