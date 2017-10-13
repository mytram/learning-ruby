#
require 'prime'

def factorize(number, primes)
  factors = {}
  return factors if number < 1

  while number != 1
    # find the smallest prime that can divide the number
    primes.rewind
    loop do
      prime = primes.next
      next unless (number % prime).zero?
      factors[prime] = factors.fetch(prime, 0) + 1
      number /= prime
      break
    end
  end

  factors
end

def solve(problem)
  primes = Prime.each
  n = 1
  t = 0
  loop do
    t += n
    n += 1
    f = factorize(t, primes)
    f[1] = 0 # to avoid values becomes nil
    # 2 is 1 and number
    divisor_count = f.values.map { |v| v + 1 }.reduce(&:*) + 2
    break if divisor_count > problem
  end

  t
end

puts "#{__FILE__} #{solve(500)}"
