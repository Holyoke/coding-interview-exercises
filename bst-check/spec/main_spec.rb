require 'main.rb'
require 'byebug'

describe "BST Check" do
  let!(:nodes) {
    nodes = (0..6).map { |x| Node.new(x) }
    nodes[3].left = nodes[5]
    nodes[5].left = nodes[1]
    nodes[5].right = nodes[4]
    nodes[3].right = nodes[2]
    nodes[2].left = nodes[6]
    nodes
  }

  it "does sample input" do
    expect(bst_check( nodes[3] )).to eq(true)
  end
end
