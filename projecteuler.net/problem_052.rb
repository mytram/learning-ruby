# Permuted multiples
# Problem 52
# It can be seen that the number, 125874, and its double, 251748,
# contain exactly the same digits, but in a different order.
#
# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and
# 6x, contain the same digits.

def permuted_multiples(start, times)
  loop do
    results = times.map { |t| (start * t).to_s.chars.sort.join }
    return start if results.all? { |r| r == results[0] }
    start += 1
  end
end

def solve
  n = 125_874
  permuted_multiples(n, 2..6)
end

puts "#{__FILE__} #{solve}"
