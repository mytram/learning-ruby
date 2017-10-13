#

def solve
  s = 2**1000
  s.to_s.chars.map(&:to_i).reduce(&:+)
end

puts "#{__FILE__} #{solve}"
