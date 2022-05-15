import IObserver from "./IObserver.js";

class AverageObserver extends IObserver {
  constructor() {
    super();
    this.averageCPU = 0.0;
    this.averageRAM = 0.0;
    this.counter = 0;
    this.resources = [];
  }

  update(cpu, ram) {
    this.resources.push([cpu, ram]);
    let tempCPU = 0.0;
    let tempRAM = 0.0;
    this.counter++;

    this.resources.forEach(resource => {
      tempCPU += resource[0];
      tempRAM += resource[1];
    });

    this.averageCPU = tempCPU / this.counter;
    this.averageRAM = tempRAM / this.counter;

    console.log(`Current Average CPU: ${this.averageCPU}\nCurrent Average RAM: ${this.averageRAM}`);
  }
}

export default AverageObserver;