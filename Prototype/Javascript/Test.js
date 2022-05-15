import ApplicationServer from "./ApplicationServer.js";
import DatabaseServer from "./DatabaseServer.js";

// Create Prototype
const applicationServer = new ApplicationServer();
const databaseServer = new DatabaseServer();

// Test application server
const applicationServer1 = applicationServer.clone();
applicationServer1.describe();
const applicationServer2 = applicationServer.clone();
applicationServer2.describe();

// Test database server
const databaseServer1 = databaseServer.clone();
databaseServer1.describe();
const databaseServer2 = databaseServer.clone();
databaseServer2.describe();
