# Consecutive prime sum Problem 50 The prime 41, can be written as the
# sum of six consecutive primes:

# 41 = 2 + 3 + 5 + 7 + 11 + 13 This is the longest sum of consecutive
# primes that adds to a prime below one-hundred.

# The longest sum of consecutive primes below one-thousand that adds
# to a prime, contains 21 terms, and is equal to 953.

# Which prime, below one-million, can be written as the sum of the
# most consecutive primes?
#

require 'prime'

def solve(problem)
  primes = Prime.each(problem).to_a

  max = 1
  number = 2

  (0..primes.size).each do |start|
    sum = 0
    (start...primes.size).each do |j|
      sum += primes[j]

      break if sum > primes.last

      n = j - start + 1
      if sum.prime? && n > max
        number = sum
        max = n
      end
    end
  end

  number
end

puts "#{__FILE__} #{solve(1_000_000)}"
