# Permuted multiples
# Problem 52
# It can be seen that the number, 125874, and its double, 251748,
# contain exactly the same digits, but in a different order.
#
# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and
# 6x, contain the same digits.

require 'set'

def solve
  n = 125_874
  times = [2, 3, 4, 5, 6]
  loop do
    results = times.map { |t| (n * t).to_s.chars.sort.join }
    return n if results.all? { |r| r == results[0] }
    n += 1
  end
end

puts "#{__FILE__} #{solve}"
