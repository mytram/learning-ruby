# coding: utf-8
# Combinatoric selections
# Problem 53
# There are exactly ten ways of selecting three from five, 12345:

# 123, 124, 125, 134, 135, 145, 234, 235, 245, and 345

# In combinatorics, we use the notation, 5C3 = 10.

# In general,

# nCr = n!/(r! * (n-r)!)
# ,where r ≤ n, n! = n×(n−1)×...×3×2×1, and 0! = 1.
# It is not until n = 23, that a value exceeds one-million: 23C10 = 1144066.
#
# How many, not necessarily distinct, values of nCr, for 1 ≤ n ≤ 100,
# are greater than one-million?
#

class Combinatorics
  #
end

def solve
  factorials = { 0 => 1 }

  (1..100).each do |n|
    factorials[n] = factorials[n - 1] * n
  end

  count = 0
  (1..100).each do |n|
    (1..n).each do |r|
      c = factorials[n] / (factorials[r] * factorials[n - r])
      count += 1 if c > 1_000_000
    end
  end

  count
end

puts "#{__FILE__} #{solve}"
