require 'set'
def is_prime?(num)
  return 'Not prime' if num <= 1
  upper_bound = Math.sqrt(num)

  (2..upper_bound).each do |i|
    return 'Not prime' if num % i == 0
  end

  'Prime'
end
