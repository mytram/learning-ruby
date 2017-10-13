require 'prime'

def solve
  primes = Prime.each
  10_000.times { primes.next }
  primes.next
end

puts "#{__FILE__} #{solve}"
