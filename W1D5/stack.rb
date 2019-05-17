class Stack
  def initialize
    @stack = []
  end

  def push(el)
    @stack.push(el)
  end

  def pop
    @stack.pop()
  end

  def peek
    @stack.last
  end
end

# s = Stack.new
# s.push(1)
# s.push(2)
# s.push(3)
# s.push(4)
# s.push(5)
# s.peek
# s.pop
# s.pop
# s.pop
# s.pop
# s.peek