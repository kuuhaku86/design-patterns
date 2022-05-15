import Server from "./Server.js";
import AverageObserver from "./AverageObserver.js";
import MaxObserver from "./MaxObserver.js";

const server = new Server();
const averageObserver = new AverageObserver();
const maxObserver = new MaxObserver();

// Attach observer
server.attach(averageObserver);
server.attach(maxObserver);

// Test update
server.updateResources();
server.describeResources();

// Test update
server.updateResources();
server.describeResources();

// Test update
server.updateResources();
server.describeResources();

