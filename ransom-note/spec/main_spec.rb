require 'main.rb'
require 'byebug'

describe "Ransom Note" do
  it "does sample input" do
    expect(
      ransome_notable?(
        "give me one grand today night",
        "give one grand today")
    ).to eq "Yes"
  end
end
