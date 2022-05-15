class Database {
  static database = null;

  constructor() {
    this.content = "User Data";
  }

  static getInstance() {
    if (!Database.database) {
      console.log("Creating new database instance.");
      Database.database = new Database();
    }

    return Database.database;
  }

  describe() {
    console.log("The database contain " + this.content);
  }
}

export default Database;