require 'main.rb'
require 'byebug'

describe "Ice Cream Parlor" do
  it "does sample input" do
    expect(find_flavors(4, [1, 4, 5, 3, 2])).to eq "1 4"
    expect(find_flavors(4, [2, 2, 4, 3])).to eq "1 2"
  end
end
