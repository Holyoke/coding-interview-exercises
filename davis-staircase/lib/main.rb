def count_paths(steps)
  paths = Array.new

  byebug if steps > 1

  if steps < 0
    return 0
  elsif steps == 0
    return 1
  elsif paths[steps].nil? == false
    return paths[steps]
  else
    return  paths[steps] = count_paths(steps - 1) + count_paths(steps - 2) + count_paths(steps - 3)
  end
end
