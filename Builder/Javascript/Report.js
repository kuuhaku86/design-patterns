class Report {
  describe() {
    if (this.filename) {
      console.log("The name of the file is " + this.filename);
    } else {
      console.log("The file doesn't have a name");
    }

    if (this.content) {
      console.log("The content of the file is " + this.content);
    } else {
      console.log("The file doesn't have a content");
    }
  }
}

export default Report;