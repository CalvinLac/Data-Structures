class Queue

attr_accessor :top, :memory_array

	def initialize
		@memory_array = []
		@memory_length = @memory_array.length
		@counter = 0 
	end 

	def enqueue(thing_to_be_queued)
		if @memory_length == 1 
			@memory_array[@counter] = thing_to_be_queued
			@counter += 1
		else
			@memory_array[@counter] = thing_to_be_queued
			@counter +=1
		end
	end

	def dequeue
		return if !empty?
		@memory_array.each_with_index do |shift,num|
			@memory_array[num] = @memory_array[num+1]
		end
	end

	def empty?
		return @memory_length == 0
		puts "You cant dequeue an empty queue"
	end 

	def displayer
		puts "Currently inside the array is"
		print "#{@memory_array}"
	end

end

q = Queue.new 
q.enqueue("1")
q.enqueue("2")
q.enqueue("3")
q.enqueue("4")
q.dequeue
q.dequeue
print q.memory_array