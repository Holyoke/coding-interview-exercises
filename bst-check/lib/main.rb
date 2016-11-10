class Node
  attr_accessor :data, :left, :right

  def initialize(data = nil, left = nil, right = nil)
    @data, @left, @right = data, left, right
  end

  def print
    "#{left.data.to_s } <- #{data.to_s} -> #{right.data.to_s}"
  end

  def inspect
    "{#{data}::#{left.inspect}|#{right.inspect}}"
  end
end

def bst_check(root, min = 0, max = 10000)
  return true if root.nil? || root.data.nil?
  check(root, min, max)
end

def check(root, min, max)
  if root.data < min || root.data > max
    return false
  end

  bst_check(root.left, min, root.data - 1) && bst_check(root.right, root.data + 1, max)
end
