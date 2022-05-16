class LoginSystem {
  constructor(strategy) {
    this.strategy = strategy;
  }

  login(username, password) {
    console.log("Starting authentication process");
    this.strategy.authenticate(username, password);
  }
}

export default LoginSystem;