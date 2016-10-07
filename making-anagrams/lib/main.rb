def make_anagram(str1, str2)
  str1_count = frequency_count(str1)
  str2_count = frequency_count(str2)

  deletions = 0

  str1_count.each do |key, value|
    if str2_count[key] < 1
      deletions += 1
    else
      next
    end
  end

  str2_count.each do |key, value|
    if str1_count[key] < 1
      deletions += 1
    else
      next
    end
  end

  str1_count.each do |key, value|
    if str2_count[key] > 0 && str1_count[key] > 0
      deletions += (str2_count[key] - str1_count[key]).abs
    end
  end

  p deletions
end

def frequency_count(str)
  result = Hash.new(0)
  str.each_char do |char|
    result[char] += 1
  end
  result
end
