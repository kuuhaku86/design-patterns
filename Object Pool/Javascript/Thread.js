class Thread {
  constructor(number) {
    this.number = number;
  }

  describe() {
    console.log("This is thread number " + this.number);
  }
}

export default Thread;