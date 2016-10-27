def count_paths(level)
  return 0 if level < 0

  paths = [1,1,2]

  (3..level).each do |lvl|
      paths[lvl] = paths[lvl - 1] + paths[lvl - 2] + paths[lvl - 3]
  end

  paths[level]
end

def count_paths_rec(levels)
  if levels < 0
    return 0
  elsif levels == 0
    return 1
  else
    return count_paths(levels - 1) + count_paths(levels - 2) + count_paths(levels - 3)
  end
end

def count_paths_memo(levels, memo = Array.new)
  if levels < 0
    return 0
  elsif levels == 0
    return 1
  end

  if memo[levels].nil?
    memo[levels] = count_paths(levels - 1, memo) + count_paths(levels - 2, memo) + count_paths(levels - 3, memo)
  end

  memo[levels]
end
