def bubble_sort(arr)
  num = arr.count
  total_swaps = 0
  number_of_swaps = 0

  num.times do |i|
    total_swaps += number_of_swaps
    number_of_swaps = 0

    (0...num - 1).each do |j|
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        number_of_swaps += 1
      end
    end # 0..num

    result = "Array is sorted in #{total_swaps} swaps.
First Element: #{arr.first}
Last Element: #{arr.last}"

    return result if number_of_swaps == 0
  end
end
