class Node
  attr_accessor :data, :left, :right

  def initialize(data = nil, left = nil, right = nil)
    @data, @left, @right = data, left, right
  end
end

def bst_check(root)
  return true if root.left.nil? && root.right.nil?
  return root.left.data < root.data && root.right.data > root.data
end
