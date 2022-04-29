abstract class ServerPrototype {
  String? content;

  ServerPrototype(this.content);

  ServerPrototype clone();

  void describe() {
    print("The content of this server is $content");
  }
}
