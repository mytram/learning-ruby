# coding: utf-8
# Coin sums
# Problem 31
# In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:

# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:

# 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
# How many different ways can £2 be made using any number of coins?

def find_coin_combinations(amount, coins)
  combinations = []
  first, *rest = coins
  max_qty = amount / first

  (0..max_qty).each do |qty|
    choice = [first, qty, first * qty].freeze

    if rest.empty?
      combinations << [choice] if choice[2] == amount
    else
      find_coin_combinations(amount - choice[2], rest).each do |sub|
        combinations << [choice, *sub]
      end
    end
  end

  combinations
end

def solve(problem)
  coins = [1, 2, 5, 10, 20, 50, 100, 200]

  find_coin_combinations(problem, coins).size
end

puts "#{__FILE__} #{solve(200)}"
