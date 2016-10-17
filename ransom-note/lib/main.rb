def make_anagram(dictionary, str)
  #get dictionary frequency count
  magazine_words = frequency_count(dictionary)
  #iterate through str and subtract each word
  str.split.each do |sub|
    magazine_words[sub] -= 1
    return "No" if magazine_words[sub] < 0
  end
  #break No if ever goes below 0
  "Yes"
end

def frequency_count(str)
  result = Hash.new(0)
  str.split.each do |word|
    result[word] += 1
  end
  result
end
