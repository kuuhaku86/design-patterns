require_relative "ThreadPool"

threadPool = ThreadPool.new
threads = []

# Get threads
for i in 0..3 do
    threads << threadPool.get
end

# Describe the threads
threads.each do |thread|
    thread.describe
end

# Release threads
for i in 0..3 do
    thread = threads.pop
    threadPool.release(thread)
end

# Get threads
for i in 0..4 do
    threads << threadPool.get
end

# Describe the threads
threads.each do |thread|
    thread.describe
end