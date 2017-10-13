# Special Pythagorean triplet
# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def solve
  s = Hash[(1...1000).map { |i| [i, i * i] }]
  (1...1000).each do |c|
    (1...c).each do |b|
      (1..b).each do |a|
        return a * b * c if (a + b + c) == 1000 && (s[a] + s[b]) == s[c]
      end
    end
  end
end

puts "#{__FILE__}  #{solve}"
