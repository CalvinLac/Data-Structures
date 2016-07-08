Node = Struct.new(:data, :next)


class LinkedList

  attr_accessor :head, :last


  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end


  def add_first_node(data)
    @head = Node.new(data, nil)
    @last = @head
  end


  def add_node(data)

    if @head.nil?

      add_first_node(data)

    else

      new_node = Node.new(data)

      @last.next = new_node

      @last = new_node

    end

    puts "Added node with value: #{data}"
  end


  def remove_node(index)

    counter = 0
    current_node = @head
    prev_node = nil

    while counter < index
      prev_node = current_node
      current_node = current_node.next
      counter += 1
    end

    next_node = current_node.next
    current_node.next = nil      
    prev_node.next = next_node

    puts "Removed node at index #{index} with value: #{current_node.data}"
  end


  def find_node(index)

    counter = 0
    current_node = @head

    while counter < index
      current_node = current_node.next
      counter += 1
    end

    puts "Found node at index #{index} with value: #{current_node.data}"
    current_node
  end


  def print_list
    counter = 0
    current_node = @head
    loop do
      puts "Node at index #{counter}: #{current_node.data}"
      break if current_node.next.nil?
      current_node = current_node.next
      counter += 1
    end
  end

end