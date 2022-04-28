class Request {
  bool? _authenticated;
  bool? _authorized;
  String? _route;

  Request(this._authenticated, this._authorized, this._route);

  bool? get is_authenticated => _authenticated;
  bool? get is_authorized => _authorized;
  String? get get_route => _route;
}
