require 'main.rb'
require 'byebug'

describe "Detect Cycle" do
  it "works on a single node" do
    node = Node.new(1)

    expect(has_cycle?(node)).to eq false
  end

  it "works on a cyclic linked list" do
    node_a = Node.new(1)
    node_b = Node.new(2)
    node_c = Node.new(3)

    node_a.next_node = node_b
    node_b.next_node = node_c
    node_c.next_node = node_b

    expect(has_cycle?(node_a)).to eq true
  end
end
