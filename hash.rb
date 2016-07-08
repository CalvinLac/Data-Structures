require './linkedlist.rb'

class HashTable

	attr_accessor :bucket

	def initialize
		@bucket = Array.new(26)
	end

	def hash(word)
		word[0].ord
	end

	def insert(word)
		@bucket[hash(word)] = LinkedList.new if @bucket[hash(word)].nil?
		@bucket[hash(word)].add_node(word)
		@bucket[hash(word)].print_list
	end 

end

h = HashTable.new
h.insert("apple")
h.insert("apps")
h.insert("bee")
h.insert("beee")
h.insert("beeeee")
h.insert("ccee")
h.insert("cee")
h.insert("cdde")
