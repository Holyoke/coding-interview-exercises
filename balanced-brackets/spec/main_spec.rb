require 'main.rb'
require 'byebug'

describe "Balanced Brackets" do
  it "does sample input" do
    expect(balanced_sequence? '{[()]}').to eq 'YES'
    expect(balanced_sequence? '{[(])}').to eq 'NO'
    expect(balanced_sequence? '{{[[(())]]}}').to eq 'YES'
  end
end
