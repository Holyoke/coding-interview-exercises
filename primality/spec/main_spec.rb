require 'main.rb'
require 'byebug'

describe "Primality" do
  it "does sample input" do
    expect(is_prime? 12 ).to eq 'Not prime'
  end
end
