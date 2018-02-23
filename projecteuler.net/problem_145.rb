# Some positive integers n have the property that the sum [ n +
# reverse(n) ] consists entirely of odd (decimal) digits. For
# instance, 36 + 63 = 99 and 409 + 904 = 1313. We will call such
# numbers reversible; so 36, 63, 409, and 904 are reversible. Leading
# zeroes are not allowed in either n or reverse(n).

# There are 120 reversible numbers below one-thousand.

# How many reversible numbers are there below one-billion
#
class Problem145
  def reversible?(n)
    reverse_n = n.to_s.reverse.to_i
    s = n + reverse_n

    while s.positive?
      return false if s.even?
      s /= 10
    end
    true
  end

  def run(problem)
    count = 120
    n = 1001

    while n < 10_000 && n < problem
      count += 1 if (n % 10).zero? && reversible?(n)
      n += 1
    end

    n = 100_001
    while n <= 99_999_999 && n < problem
      count += 1 if (n % 10).zero? && reversible?(n)
      n += 1
    end
    count
  end
end

def solve(problem)
  Problem145.new.run(problem)
end

puts "#{__FILE__} #{solve(1_000_000_000)}"
