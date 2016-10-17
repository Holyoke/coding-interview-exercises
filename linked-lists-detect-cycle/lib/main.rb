class Node
  attr_accessor :next_node

  def initialize(data = nil, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

def has_cycle?(head)
  slow = head
  fast = head.next_node
end
