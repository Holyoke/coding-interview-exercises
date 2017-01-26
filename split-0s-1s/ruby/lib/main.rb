def segregate(arr)
  left, right = 0, arr.length - 1

  while left < right
    left += 1 if arr[left] == 0
    right -= 1 if arr[right] == 1
    if left < right
      arr[left], arr[right] = arr[right], arr[left]
    end
  end

  arr
end
