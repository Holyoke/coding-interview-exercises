def make_anagram(str1, str2)
  #get character count
  char_count = frequency_count(str1)

  #subtract common characters between both
  str2.each_char do |c|
    char_count[c] -= 1
  end
  #sum str1 counts and return
  char_count.inject(0) { |sum, kv| sum + kv[1].abs }
end

def frequency_count(str)
  result = Hash.new(0)
  str.each_char do |char|
    result[char] += 1
  end
  result
end
