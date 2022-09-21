class LinkedList

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    Node.new(value)
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
