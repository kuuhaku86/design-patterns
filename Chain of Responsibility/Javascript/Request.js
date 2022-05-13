class Request {
  constructor(authenticated, authorized, route) {
    this.authenticated = authenticated;
    this.authorized = authorized;
    this.route = route;
  }
}

export default Request;