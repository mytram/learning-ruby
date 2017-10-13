# coding: utf-8
# Longest Collatz sequence
# Problem 14
# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequenc

def generate_series(n, known_series = { 1 => 1 })
  return known_series[n] if known_series.key?(n)

  next_series = if n.even?
                  generate_series(n / 2, known_series)
                else
                  generate_series(3 * n + 1, known_series)
                end

  known_series[n] = 1 + next_series
end

def solve
  known_series = { 1 => 1 }
  max_count = 0
  number = nil
  (13...1_000_000).each do |n|
    s = generate_series(n, known_series)
    if max_count < s
      max_count = s
      number = n
    end
  end

  number
end

puts "#{__FILE__} #{solve}"
