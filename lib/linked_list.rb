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
      node.next_node = value
      Node.new(value)
    else
      @head = Node.new(value)
    end
  end

  def prepend(value)
    # adds a node to the front of the list
    @head = Node.new(value, @head.value)
  end

  def size
    count = 0
    count unless @head
    node = @head
    while node.next_node
      node = node.next_node
      count += 1
    end
    count
  end

  def head
    puts "#{@head.value}, #{@head.next_node}"
  end

  def tail
    a.last
  end

  def at(index)
    a[index]
  end

  def pop
    a.pop
  end

  def contains?(value)
    a.include?(value)
  end

  def find(value)
    a.index(value)
  end

  def to_s
    puts 'a'
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
list.append(249)
list.append(251)
list.prepend(526)
p list.size
