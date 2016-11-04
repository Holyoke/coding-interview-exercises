class Queue
  def initialize
    @stack1 = Array.new
    @stack2 = Array.new
  end

  def enqueue(datum)
    @stack1.push datum
    return self
  end

  def dequeue
    if @stack2.empty?
      while !@stack1.empty?
        @stack2.push @stack1.pop
      end
    end

    @stack2.pop
  end

  def peek
    if @stack2.empty?
      while !@stack1.empty?
        @stack2.push @stack1.pop
      end
    end

    @stack2.last
  end

  def print
    string = "{" + @stack1.join(" <- ") + "}"
  end
end
