def fibonacci(num, memo = [0, 1, 1])
  if memo[num].nil?
    memo[num] = fibonacci(num - 1, memo) + fibonacci(num - 2, memo)
  end

  memo[num]
end

def fibonacci_rec(num)
  if num <= 1
    return 1
  elsif num == 2
    return 1
  else
    return fibonacci(num - 1) + fibonacci(num - 2)
  end
end
