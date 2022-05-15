import IObserver from "./IObserver.js";

class MaxObserver extends IObserver {
  constructor() {
    super();
    this.maxCPU = 0;
    this.maxRAM = 0;
  }

  update(cpu, ram) {
    this.maxCPU = Math.max(this.maxCPU, cpu);
    this.maxRAM = Math.max(this.maxRAM, ram);

    console.log(`Current Max CPU: ${this.maxCPU}\nCurrent Max RAM: ${this.maxRAM}`);
  }
}

export default MaxObserver;