class Report {
  String? _filename;
  String? _content;

  void setFilename(String filename) {
    _filename = filename;
  }

  void setContent(String content) {
    _content = content;
  }

  void describe() {
    if (_filename != null) {
      print("The name of the file is $_filename");
    } else {
      print("File doesn't have any name");
    }

    if (_content != null) {
      print("The content of the file is $_content");
    } else {
      print("File doesn't have any content");
    }
  }
}
