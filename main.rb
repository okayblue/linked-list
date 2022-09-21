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
    return node if !node.next_node while (node = node.next)
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

list = LinkedList.new
p list
list.append(14)
p list
list.append(33)
p list
