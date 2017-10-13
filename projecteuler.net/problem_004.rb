# coding: utf-8
# Largest palindrome product
# Problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindromes
  Enumerator.new do |yielder|
    (100...1000).each do |i|
      (100...1000).each do |j|
        n = i * j
        as_s = n.to_s
        yielder << n if as_s == as_s.reverse
      end
    end
  end
end

def solve
  palindromes.to_a.max
end

puts "#{__FILE__} #{solve}"
