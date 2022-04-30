class Database {
  static Database? _instance;
  String? _content = "User Data";

  static Database? getInstance() {
    if (_instance == null) {
      print("New database instance created");
      _instance = Database();
    }

    return _instance;
  }

  void describe() {
    print("The content of this database is $_content");
  }
}
