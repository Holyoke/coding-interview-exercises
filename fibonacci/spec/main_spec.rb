require 'main.rb'
require 'byebug'

describe "Fibonacci" do
  it "does basic input" do
    expect(fibonacci 1 ).to eq 1
    expect(fibonacci 2 ).to eq 1
    expect(fibonacci 3 ).to eq 2
    expect(fibonacci 4 ).to eq 3
    expect(fibonacci 5 ).to eq 5
    expect(fibonacci 6 ).to eq 8
  end

  it "solves big numbers efficiently" do
    expect(fibonacci 37).to eq 24157817
  end
end
