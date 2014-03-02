require 'test_helper'
require 'list'


describe "Traversing a singly linked list" do
  it "should return '1,2,3,4,5,6,7,8' for a list made up of the numbers 1-8"do
    list = create_sll

    list.traverse

  end
end

describe "Traversing a doubly linked list" do
  it "should return '1,2,3,4,5,6,7,8,1' for a doubly linked list made up of numbers 1-8" do
  end
end

describe "Deleting a node from a linked list" do
  it "should return 1,2,3,5,6,7,8 if the 4th node is deleted from a linked list of 1-8" do
  end
end
