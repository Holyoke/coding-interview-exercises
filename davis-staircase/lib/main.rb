def count_paths(level)
  return 0 if level < 0
  return 1 if level <= 1
  return 2 if level == 2

  paths = [1,1,2]

  (3..level).each do |lvl|
      current = paths[0] + paths[1] + paths[2]
      paths[0] = paths[1]
      paths[1] = paths[2]
      paths[2] = current
  end

  paths.last
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

def count_paths_4(level)
  return 0 if level < 0
  return 1 if level <= 1
  return 2 if level == 2
  return 4 if level == 3

  paths = [1,1,2,4]

  (4..level).each do |lvl|
      current = paths[0] + paths[1] + paths[2] + paths[3]
      paths[0] = paths[1]
      paths[1] = paths[2]
      paths[2] = paths[3]
      paths[3] = current
  end

  paths.last
end
