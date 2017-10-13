require 'prime'

def solve(problem)
  Prime.each(problem / 2) do |prime|
    next if (problem % prime).positive?
    problem /= prime
    return problem if Prime.prime?(problem)
  end
end

puts "#{__FILE__} #{solve(600_851_475_143)}"
