def balanced_sequence?(bracket)
  stack = Array.new

  bracket.each_char do |char|
    case char
    when "}"
      stack.last == "{" ? stack.pop : stack.push(char)
    when ")"
      stack.last == "(" ? stack.pop : stack.push(char)
    when "]"
      stack.last == "[" ? stack.pop : stack.push(char)
    else
      stack.push char
    end
  end

  stack.empty? ? 'YES' : 'NO'
end
