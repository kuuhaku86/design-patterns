abstract class TwoFactorAuthentication {
  void getData(String username);
  void sendNotification(String username);
  void match(String username);

  void authenticate(String username, String password) {
    getData(username);

    sendNotification(username);

    match(username);
  }
}
