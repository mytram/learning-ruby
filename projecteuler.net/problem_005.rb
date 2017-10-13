# Smallest multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require 'prime'
require 'set'

def solve
  primes = Prime.each(20).to_a

  number = 1
  (2..20).each do |factor|
    while (number % factor).positive?
      primes.each do |prime|
        if (factor % prime).zero?
          number *= prime
          break
        end
      end
    end
  end

  number
end

puts "#{__FILE__} #{solve}"
