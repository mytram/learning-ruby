# coding: utf-8
# Names scores
# Problem 22
#
# Using names.txt (right click and 'Save Link/Target As...'), a 46K
# text file containing over five-thousand first names, begin by
# sorting it into alphabetical order. Then working out the
# alphabetical value for each name, multiply this value by its
# alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN,
# which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the
# list. So, COLIN would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?

def solve
  words = File.open('p022_names.txt')
              .to_a
              .join('')
              .gsub('"', '')
              .split(',')
              .map(&:strip)
              .reject { |a| a == '' }
              .sort

  a_ord = 'A'[0].ord
  pos = 0
  words.map do |w|
    pos += 1
    pos * w.chars.map { |c| c[0].ord - a_ord + 1 }.inject(&:+)
  end.inject(&:+)
end

puts "#{__FILE__} #{solve}"
