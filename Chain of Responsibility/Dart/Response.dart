class Response {
  int? _statusCode;
  String? _message;
  int? _data;

  Response(this._statusCode, this._message, this._data);

  int? get getCode => _statusCode;
  String? get getMessage => _message;
  int? get getData => _data;

  String describe() {
    return "$_statusCode : $_message\n";
  }
}
