require 'main.rb'
require 'byebug'

describe "Sorting: Bubble Sort" do
  it "does sample input" do


    expect(bubble_sort([1,2,3])).to eq("Array is sorted in 0 swaps.
                                        First Element: 1
                                        Last Element: 3")
  end
end
