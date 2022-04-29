class Image {
  int? _imagePosition;
  double? _imageSize;

  Image(this._imagePosition, this._imageSize);

  void rotate(int degree) {
    _imagePosition = (_imagePosition! + degree).abs() % 360;
  }

  void resize(int percentage) {
    _imageSize = _imageSize! * ((percentage / 100) as double?)!;
  }

  void inspect() {
    print("""
      Image Position: $_imagePosition
      Image Size    : $_imageSize
    """);
  }
}
