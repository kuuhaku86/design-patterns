class ServerPrototype {
  constructor(content) {
    this.content = content;
  }

  describe() {
    console.log(`The content of this server is ${this.content}`);
  }

  clone() {
    return new ServerPrototype(this.content);
  }
}

export default ServerPrototype;