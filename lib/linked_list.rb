# frozen_string_literal: true

# creates linked list
class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    # adds a node to the end of the list
    if @head
      node = @head
      node = node.next_node while node.next_node
      node.next_node = Node.new(value)
      Node.new(value)
    else
      @head = Node.new(value)
    end
  end

  def prepend(value)
    # adds a new node to the front of the list
    @head = Node.new(value, @head)
  end

  def size
    # returns the total number of nodes in the list
    node_count = 0
    return node_count unless @head

    node_count += 1
    current_node = @head
    while current_node.next_node
      node_count += 1
      current_node = current_node.next_node
    end
    node_count
  end

  def head
    # returns the value of the first node in the list
    @head.value
  end

  def tail
    # returns the value of the last node in the list
    node = @head
    node = node.next_node while node.next_node
    node.value
  end

  def at(index)
    # returns the value of the node at a specified index - needs work
    i = 0
    node = @head
    while i != index
      node = node.next_node
      i += 1
    end
    p node.value
  end

  def pop
    # removes the last node from the list
    if @head.next_node
      last_node = @head
      second_node = @head
      last_node = last_node.next_node while last_node.next_node
      second_node = second_node.next_node while second_node.next_node != last_node
      second_node.next_node = nil
      last_node.value = nil
    else
      @head = nil
    end
  end

  def contains?(value)
    # returns true or false depending on whether an element with that value exists in the list
    node = @head
    while node
      return true if node.value == value

      node = node.next_node
    end
    false
  end

  def find(value)
    a.index(value)
  end

  def to_s
    # converts the list to a string - needs work
    node = @head
    while node
      print "( #{node.value} ) -> "
      node = node.next_node
    end
    print "nil\n"
  end

  def insert_at(value, index)
    p 'hello world'
  end

  def remove_at(index)
    p 'hello world'
  end
end

# creates linked list node
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

list = LinkedList.new
109.times do
  list.append(rand(300))
end

list.to_s
