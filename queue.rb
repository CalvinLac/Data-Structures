class Queue

attr_accessor :top, :memory_array, :length

	def initialize
		@memory_array = []
		@memory_length = @memory_array.length
		@top = @memory_length-1 
	end 

	def enqueue(thing_to_be_queued)
		if @top < 0
			@memory_array[@memory_length] = thing_to_be_queued
			@top +=1
		else
		@memory_array[@top+1] = thing_to_be_queued
		@top +=1
		end
	end

	def dequeue
		return if !empty?
		counter = 0
		while (!@memory_array[counter].nil?)
			@memory_array[counter] = @memory_array[counter+1]
			counter +=1
		end
	end

	def empty?
		return @memory_length == 0
		puts "You cant dequeue an empty queue"
	end 

	def displayer
		puts "The current array is"
		print @memory_array[0..(@top-1)]
	end

end

q = Queue.new
q.enqueue("1")
q.enqueue("2")
q.enqueue("3")
q.enqueue("4")
q.dequeue
q.displayer