require 'minitest/autorun'
require 'minitest/spec'

def create_sll
  head = Node.new(1)
  node2 = Node.new(2,head)
  node3 = Node.new(3,node2)
  node4 = Node.new(4,node3)
  node5 = Node.new(5,node4)
  node6 = Node.new(6,node5)
  node7 = Node.new(7,node6)
  node8 = Node.new(8,node7)

  node7.nexxt = node8
  node6.nexxt = node7
  node5.nexxt = node6
  node4.nexxt = node5
  node3.nexxt = node4
  node2.nexxt = node3
  head.nexxt = node2
end
