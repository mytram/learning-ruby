def solve
  fib = Enumerator.new do |y|
    a = b = 1
    loop do
      y << a
      a, b = b, a + b
    end
  end

  fib.take_while { |f| f < 4_000_000 }.select(&:even?).reduce(&:+)
end

puts "#{__FILE__} #{solve}"
