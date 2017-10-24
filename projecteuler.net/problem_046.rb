# # coding: utf-8
# Goldbach's other conjecture
# Problem 46
# It was proposed by Christian Goldbach that every odd composite
# number can be written as the sum of a prime and twice a square.

# 9 = 7 + 2×12
# 15 = 7 + 2×22
# 21 = 3 + 2×32
# 25 = 7 + 2×32
# 27 = 19 + 2×22
# 33 = 31 + 2×12

# It turns out that the conjecture was false.

# What is the smallest odd composite that cannot be written as the sum
# of a prime and twice a square?

require 'prime'

def goldbachs_other_conjecture(composite, primes = Prime.each)
  found = false
  s = 0

  primes.rewind

  prime = primes.next
  while !found && prime < composite
    (1..composite).each do |n|
      s = prime + 2 * n * n
      break if s >= composite
    end
    return true if s == composite
    prime = primes.next
  end

  found
end

def solve
  primes = Prime.each
  composite = 33

  loop do
    composite += 2
    next if composite.prime?

    break unless goldbachs_other_conjecture(composite, primes)
  end

  composite
end

puts "#{__FILE__} #{solve}"
