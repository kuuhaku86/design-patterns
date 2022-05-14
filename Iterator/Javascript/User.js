class User {
  constructor(name) {
    this.name = name;
  }

  describe() {
    console.log(`The name of this user is ${this.name}`);
  }
}

export default User;