def fibonacci(num)
  memo = [0,1,1]

  (3..num).each do |step|
    current_fib = memo[1] + memo[2]
    memo[0] = memo[1]
    memo[1] = memo[2]
    memo[2] = current_fib
  end

  memo[2]
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

def fibonacci_memo(num, memo = [0, 1, 1])
  if memo[num].nil?
    memo[num] = fibonacci(num - 1, memo) + fibonacci(num - 2, memo)
  end

  memo[num]
end

def fibonacci_dp(num)
  memo = [0,1,1]

  (3..num).each do |step|
    memo[step] = memo[step - 1] + memo[step - 2]
  end

  memo[num]
end
