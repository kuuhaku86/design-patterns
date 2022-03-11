package main

func main()  {
	server := Server{
		CPU: 0,
		RAM: 0,
		observers:	[]IObserver{},
	}
	maxObserver := &MaxObserver{0,0}
	averageObserver := &AverageObserver{
		counter: 0,
		resources: [][]int{},
		averageCPU: 0,
		averageRAM: 0,
	}

	// Attach observers
	server.attach(maxObserver)
	server.attach(averageObserver)

	// Test update
	server.updateResource()
	server.describeResource()

	// Test update
	server.updateResource()
	server.describeResource()

	// Test update
	server.updateResource()
	server.describeResource()
}