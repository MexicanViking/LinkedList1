class Stack
  attr_accessor :value, :next_push

  def initialize(value, next_push=nil)
    @value = value
    @next_push = next_push
  end

  def print_values
    print "[#{value} -->"
    if next_push.nil?
      print "nil"
    else
      next_push.print_values
    end
  end
end

push1 = Stack.new(37)
push2 = Stack.new(99, push1)
push3 = Stack.new(12, push2)

push3.print_values
