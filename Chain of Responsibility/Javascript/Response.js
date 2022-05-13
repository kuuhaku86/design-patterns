class Response {
  constructor(code, message, data) {
    this.code = code;
    this.message = message;
    this.data = data;
  }

  describe() {
    console.log(`${this.code} : ${this.message}\n`)
  }
}

export default Response;