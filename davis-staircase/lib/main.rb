def count_paths(steps, memo = Array.new)
  if steps < 0
    return 0
  elsif steps == 0
    return 1
  end

  if memo[steps].nil?
    memo[steps] = count_paths(steps - 1, memo) + count_paths(steps - 2, memo) + count_paths(steps - 3, memo)
  end

  memo[steps]
end

def count_paths_rec(steps)
  if steps < 0
    return 0
  elsif steps == 0
    return 1
  else
    return count_paths(steps - 1) + count_paths(steps - 2) + count_paths(steps - 3)
  end
end
