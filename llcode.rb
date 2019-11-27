class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def reverse_list(reversed=nil)
    if next_node
      next_node.reverse_list(LinkedListNode.new(value, reversed))
    else
      LinkedListNode.new(value, reversed)
    end
  end

  def reverse_list!(list=self, reversed_list = reverse_list)
    self.value = reversed_list.value
    if next_node
      next_node.reverse_list!(list, reversed_list.next_node)
    else
      list
    end
  end

  def print_values
    print "[#{value} --> "
    if next_node.nil?
      print "nil\n"
    else
      next_node.print_values
    end
  end

end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

node3.print_values

node3.reverse_list.print_values
