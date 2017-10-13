require 'prime'

def solve
  Prime.each(2_000_000).reduce(&:+)
end

puts "#{__FILE__} #{solve}"
