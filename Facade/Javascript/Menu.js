class Menu {
  constructor(name) {
    this.name = name;
  }

  describe() {
    console.log(`This is ${this.name} menu`);
  }
}

export default Menu;