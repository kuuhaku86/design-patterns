class TwoFactorAuthentication {
  getData(username) {
    throw new Error('Not implemented');
  }

  sendNotification(username) {
    throw new Error('Not implemented');
  }

  match(username) {
    throw new Error('Not implemented');
  }

  authenticate(username, password) {
    this.getData(username);

    this.sendNotification(username);

    this.match(username);
  }
}

export default TwoFactorAuthentication;