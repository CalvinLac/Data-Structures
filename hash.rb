require './linkedlist.rb'

class HashTable

	attr_accessor :bucket

	def initialize
		@bucket = Array.new(26)
	end

	def hash(word)
		word[0].ord-97
	end

	def insert(word,defin)
		@bucket[hash(word)] = LinkedList.new if @bucket[hash(word)].nil?
		@bucket[hash(word)].add_node(word,defin)
	end 

  	def render_list
  		@bucket.each_with_index do |bucket,index|
  	  		if bucket.nil?
  				puts "nothing in #{index} bucket "
  	  		else
  	  			bucket.print_list
  	  		end
  		end
  	end
	

end

h = HashTable.new
h.insert("apple", "define")
h.insert("apps", "define")
h.insert("bee", "define")
h.insert("beee", "define")
h.insert("beeeee", "define")
h.insert("ccee", "define")
h.insert("cee", "define")
h.insert("cdde", "define")
h.insert("zz", "define")
h.render_list

