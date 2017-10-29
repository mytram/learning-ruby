# Square root digital expansion Problem 80 It is well known that if
# the square root of a natural number is not an integer, then it is
# irrational. The decimal expansion of such square roots is infinite
# without any repeating pattern at all.

# The square root of two is 1.41421356237309504880..., and the digital
# sum of the first one hundred decimal digits is 475.

# For the first one hundred natural numbers, find the total of the
# digital sums of the first one hundred decimal digits for all the
# irrational square roots.

require 'bigdecimal'

def solve
  (1..100).map do |n|
    sqrt = BigDecimal(n).sqrt(100).to_s('F')
    if sqrt =~ /\.0$/
      0
    else
      sqrt.sub('.', '')[0...100].chars.map(&:to_i).reduce(&:+)
    end
  end.reduce(&:+)
end

puts "#{__FILE__} #{solve}"
