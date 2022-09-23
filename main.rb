class LinkedList

  def initialize
    @head = nil
  end

  def append(value)
    if @head == nil 
      @head = Node.new(value)
    else
      tail.next_node = Node.new(value)
    end
  end

  def tail
    node = @head
    return node if !node.next_node
    return node if !node.next_node while (node = node.next_node)
  end

  def prepend(value)
    @head = Node.new(value, @head)
  end

  def size
    count = 1 # to count head
    current = @head
    while current.next_node
      count += 1
      current = current.next_node
    end
    p count
  end
  
  def head
    @head
  end

  def at(index)
    current_index = 0
    current_node = @head
    until current_index == index
      current_index += 1
      current_node = current_node.next_node
    end
    puts current_node.value
    current_node
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

list = LinkedList.new
list.append(14)
list.append(33)
list.append(33433)
list.prepend(444)
p list
# list.size
# puts list.tail.value
# puts list.head.value
list.at(2)
