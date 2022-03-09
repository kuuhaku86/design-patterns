package main

func main()  {
	var currentServer1 ServerPrototype
	var currentServer2 ServerPrototype
	databaseServer := NewDatabaseServer()
	applicationServer := NewApplicationServer()

	// Test database server
	currentServer1 = databaseServer.clone()
	currentServer1.describe()
	currentServer2 = databaseServer.clone()
	currentServer2.describe()

	// Test application server
	currentServer1 = applicationServer.clone()
	currentServer1.describe()
	currentServer2 = applicationServer.clone()
	currentServer2.describe()

}