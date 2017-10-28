# Self powers
# Problem 48
# The series, 11 + 22 + 33 + ... + 1010 = 10405071317.

# Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.

def solve
  (1..1000).map { |n| n**n } # power series
           .inject(&:+)      # sum
           .to_s[-10..-1]    # last ten digits
end

puts "#{__FILE__} #{solve}"
