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
  
  def pop 
    current = @head
    until current.next_node.next_node == nil
      current = current.next_node
    end
    popped = current.next_node
    current.next_node = nil
    popped
  end

  def contains?(value)
    # returns true if the passed in value is in the list and otherwise returns false.
    current = @head
    contain = false
    until current == nil
      contain = true if current.value == value
      break if contain == true
      current = current.next_node
    end
    contain
  end

  def find(value)
    current = @head
    index = 0
    until current.value == value
      index += 1
      current = current.next_node
      break if !current
    end
    current ? index : nil
  end

  def to_s
    current = @head
    string = ""
    while current
      string << "( #{current.value} ) -> ".chomp
      current = current.next_node
    end
    string << "( nil )"
    string
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
puts list.to_s