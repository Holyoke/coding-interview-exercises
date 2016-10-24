require 'main.rb'
require 'byebug'

describe "Davis Staircase" do
  it "does sample input" do
    expect(count_paths 1).to eq 1
    expect(count_paths 3).to eq 4
    expect(count_paths 7).to eq 44
  end
end
