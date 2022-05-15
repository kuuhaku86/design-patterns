class Server {
  constructor() {
    this.observers = [];
    this.cpu = 0;
    this.ram = 0;
  }

  attach(observer) {
    this.observers.push(observer);
  }

  updateResources() {
    this.cpu = Math.floor(Math.random() * 100);
    this.ram = Math.floor(Math.random() * 100);

    this.observers.forEach(observer => {
      observer.update(this.cpu, this.ram);
    });
  }

  describeResources() {
    console.log(`Current CPU: ${this.cpu}\nCurrent RAM: ${this.ram}`);
  }
}

export default Server;