class Stack 
	attr_accessor :top, :memory_array

	def initialize
		@memory_array = []
		@length = @memory_array.length
	end 

	def push(thing_to_be_pushed)
		@memory_array[@length] = thing_to_be_pushed
		@length +=1 
	end

	def pop
		return if empty?
		
		length = @memory_array.length
		@memory_array[length-1] = nil
		@length -= 1
	end

	def empty?
		return @length == 0
	end 

	def peek
		return @memory_array[@length-1]
	end


	def displayer
		puts "Currently inside the array is"
		print "#{@memory_array}"
	end

end

s = Stack.new 

s.push("hihi")
s.push("lol")
s.push("bye")
s.pop 
s.push("new")
s.push("loool")
s.displayer
puts s.peek


