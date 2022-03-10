package main

func main()  {
	var database *Database

	// Get instance
	database = getInstance()

	// Test instance
	database.describe()

	// Get instance
	database = getInstance()

	// Test instance
	database.describe()
}