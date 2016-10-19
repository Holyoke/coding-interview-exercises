class Node
  attr_accessor :next_node

  def initialize(data = nil, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

def has_cycle?(head)
  return false if head.nil?

  slow = head
  fast = head.next_node

  return true if slow == fast
  until slow.next_node.nil?
    slow = slow.next_node
    fast = fast.next_node.next_node
    return true if slow == fast
  end

  false
end
