class Thread {
  int? _number;

  Thread(this._number);

  void describe() {
    print("This is thread number $_number");
  }
}
