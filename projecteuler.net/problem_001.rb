#

def solve(problem)
  (1...problem).select { |i| (i % 3).zero? || (i % 5).zero? }.reduce(&:+)
end

# 233168
puts "#{__FILE__}: #{solve(1000)}"
