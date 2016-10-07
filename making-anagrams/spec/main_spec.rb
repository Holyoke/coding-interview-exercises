require 'main.rb'
require 'byebug'

describe "Making Anagrams" do
  it "does sample input" do
    result = make_anagram("abc", "deb")

    expect(result).to eq 4
  end

  it "test sample 1" do
    result = make_anagram("abc", "debb")

    expect(result).to eq 5
  end
end
