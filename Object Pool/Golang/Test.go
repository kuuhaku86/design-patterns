package main

func main()  {
	threadPool := NewThreadPool()
	threads := make([]*Thread, 0)
	var thread *Thread

	// Get threads object
	for i := 0; i < 3; i++ {
		thread = threadPool.get()
		threads = append(threads, thread)
	}

	// Describe threads
	for _, thread = range threads {
		thread.describe()
	}

	// Release threads object
	for i := 0; i < 3; i++ {
		thread = threads[len(threads) - 1]
		threads = threads[:len(threads) - 1]
		threadPool.release(thread)
	}

	// Get threads object
	for i := 0; i < 4; i++ {
		thread = threadPool.get()
		threads = append(threads, thread)
	}

	// Describe threads
	for _, thread = range threads {
		thread.describe()
	}
}