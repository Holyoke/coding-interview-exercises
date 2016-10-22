require 'main.rb'
require 'byebug'

describe "Primality" do
  it "does sample input" do
    expect(is_prime? 12 ).to eq 'Not prime'
    expect(is_prime? 5 ).to eq 'Prime'
    expect(is_prime? 7 ).to eq 'Prime'
  end

  it "handles edge cases" do
    expect(is_prime? 1 ).to eq 'Not prime'
    expect(is_prime? 2 ).to eq 'Prime'
    expect(is_prime? 3 ).to eq 'Prime'
    expect(is_prime? 20 ).to eq 'Not prime'
  end
end
