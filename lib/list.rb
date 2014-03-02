class Node
  attr_accessor :value,:prev,:nexxt

  def initialize(value,prev=nil,nexxt=nil)
    @value = value
    @prev = prev
    @nexxt = nexxt
  end
end

class List
  attr_accessor :tail
  def initialize(node)
    @head = node
    @tail = node
  end

  def add_node(node)
    @tail.nexxt = node
    node.prev = @tail
    @tail = node
  end

  def remove_node(node)
    node.prev.nexxt = node.nexxt
    node.nexxt.prev = node.prev if node.nexxt
  end

  def traverse(node)
    return if node.nil?
    print "#{node.value} "
    traverse(node.nexxt)
  end

  def dedupe
    running_list = []
    nodeptr = @head

    while nodeptr
      running_list.include?(nodeptr.value) ? remove_node(nodeptr) : running_list << nodeptr.value
      nodeptr = nodeptr.nexxt
    end
  end
end

def list_fill(head)
  my_list = List.new(head)
  198.times do |count|
    my_list.add_node(Node.new(Random.rand(100)))
  end
  return my_list
end

head_node = Node.new(1)
the_list = list_fill(head_node)
the_list.traverse(head_node)
puts " "
the_list.dedupe
the_list.traverse(head_node)
puts " "
