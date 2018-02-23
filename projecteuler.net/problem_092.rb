def solve
  seen = { 1 => 0 }
  digit_squares = Hash[
    (0..9).map do |i|
      [i.to_s, i * i]
    end
  ]
  count = 0
  n = 1
  while n < 10_000_000
    s = n
    chain = {}
    loop do
      chain[s] = true
      t = 0
      s.to_s.chars.each do |c|
        t += digit_squares[c]
      end

      if seen.key? t
        seen[n] = seen[t]
      elsif [1, 89].include? t
        r = t / 89
        seen[n] = r
      else
        s = t
        next
      end

      count += seen[n]
      break
    end

    n += 1
  end
  count
end

puts "#{__FILE__}: #{solve}"
