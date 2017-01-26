require 'main.rb'
require 'byebug'

describe "Segregate 0's and 1's" do
  it "does example case" do
    expect(
      segregate([0, 1, 0, 1, 0, 0, 1, 1, 1, 0])
    ).to eq [0, 0, 0, 0, 0, 1, 1, 1, 1, 1]
  end
end
