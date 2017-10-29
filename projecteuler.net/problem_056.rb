# Powerful digit sum
# Problem 56
# A googol (10100) is a massive number: one followed by one-hundred
# zeros; 100100 is almost unimaginably large: one followed by
# two-hundred zeros. Despite their size, the sum of the digits in each
# number is only 1.

# Considering natural numbers of the form, ab, where a, b < 100, what is
# the maximum digital sum?

def solve
  (1..99).map do |a|
    (1..99).map do |b|
      (a ** b).to_s.chars.map(&:to_i).reduce(&:+)
    end.max
  end.max
end

puts "#{__FILE__} #{solve}"
