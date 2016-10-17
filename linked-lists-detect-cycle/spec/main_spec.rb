require 'main.rb'
require 'byebug'

describe "Detect Cycle" do
  it "does sample input" do
    node = Node.new(1)

    expect(has_cycle?(node)).to eq 0
  end
end
