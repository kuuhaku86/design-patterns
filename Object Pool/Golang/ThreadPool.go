package main

type ThreadPool struct {
	threads []*Thread
	counter int
}

func NewThreadPool() *ThreadPool {
	threadPool := ThreadPool{}
	threadPool.threads = make([]*Thread, 0)
	threadPool.counter = 2

	for i := 1; i <= 2; i++ {
		thread := &Thread{
			number: i,
		}

		threadPool.threads = append(threadPool.threads, thread)
	}

	return &threadPool
}

func (threadPool *ThreadPool) get() *Thread  {
	var thread *Thread
	if len(threadPool.threads) > 0 {
		thread = threadPool.threads[0]
		threadPool.threads = threadPool.threads[1:]

	} else {
		threadPool.counter += 1
		thread = &Thread{
			number: threadPool.counter,
		}
	}

	return thread
}

func (threadPool *ThreadPool) release(thread *Thread) {
	threadPool.threads = append(threadPool.threads, thread)
}