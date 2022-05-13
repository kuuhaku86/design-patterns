class Reporter {
  constructor(builder) {
    this.builder = builder;
  }

  createReport() {
    this.builder.buildContent();
    this.builder.buildFile();

    return this.builder.getResult();
  }
}

export default Reporter;