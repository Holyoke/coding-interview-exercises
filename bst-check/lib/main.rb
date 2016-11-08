class Node
  attr_accessor :data, :left, :right

  def initialize(data = nil, left = nil, right = nil)
    @data, @left, @right = data, left, right
  end

  def inspect
    "#{left.print } <- #{data} -> #{right.print}"
  end

  def print
    "#{left}"
  end
end

def bst_check(root)
  check(root, root.left, root.right)
end

def check(root, min, max)
  #check if it's basic node.
  return true if root.nil?

  #check if bst, invalidate if fail
  if min > root.data || max < root.data
    return false
  else
    return bst_check(root.left) && bst_check(root.right)
  end
end
