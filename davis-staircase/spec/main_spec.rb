require 'main.rb'
require 'byebug'

describe "Davis Staircase" do
  it "does sample input" do
    expect(count_paths 1).to eq 1
    expect(count_paths 3).to eq 4
    expect(count_paths 7).to eq 44
  end

  it "handles basic cases" do
    expect(count_paths 1).to eq 1
    expect(count_paths 2).to eq 2
    expect(count_paths 3).to eq 4
  end

  it "handles edge cases" do
    expect(count_paths 27).to eq 8646064
  end
end
