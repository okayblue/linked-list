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
end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

list = LinkedList.new
p list
list.append(14)
p list
list.append(33)
list.append(33433)
p list
list.prepend(444)
p list