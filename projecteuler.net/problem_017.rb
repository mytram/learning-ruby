# Number letter counts
# Problem 17
# If the numbers 1 to 5 are written out in words: one, two, three,
# four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in
# total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were
# written out in words, how many letters would be used?
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three
# hundred and forty-two) contains 23 letters and 115 (one hundred and
# fifteen) contains 20 letters. The use of "and" when writing out
# numbers is in compliance with British usage.

NUMBER_LETTER_COUNT = {
  1 => 'one'.size,
  2 => 'two'.size,
  3 => 'three'.size,
  4 => 'four'.size,
  5 => 'five'.size,
  6 => 'six'.size,
  7 => 'seven'.size,
  8 => 'eight'.size,
  9 => 'nine'.size,
  10 => 'ten'.size,
  11 => 'eleven'.size,
  12 => 'twelve'.size,
  13 => 'thirteen'.size,
  14 => 'fourteen'.size,
  15 => 'fifteen'.size,
  16 => 'sixteen'.size,
  17 => 'seventeen'.size,
  18 => 'eighteen'.size,
  19 => 'nineteen'.size,
  20 => 'twenty'.size,
  30 => 'thirty'.size,
  40 => 'forty'.size,
  50 => 'fifty'.size,
  60 => 'sixty'.size,
  70 => 'seventy'.size,
  80 => 'eighty'.size,
  90 => 'ninety'.size,
  100 => 'hundred'.size,
  1000 => 'thousand'.size
}.freeze

def sum(enum)
  enum.reduce(&:+)
end

def letter_counts(range)
  enum = range.map { |n| NUMBER_LETTER_COUNT.fetch(n) }
  def enum.sum
    reduce(&:+)
  end
  enum
end

def count_letters_from_0_to_99
  sum([
        letter_counts(1..9).sum * 9,
        letter_counts(10..19).sum,
        letter_counts((20..90).step(10)).sum * 10
      ])
end

#
def solve
  hundred = NUMBER_LETTER_COUNT.fetch(100)
  one_thousand = NUMBER_LETTER_COUNT.fetch(1) + NUMBER_LETTER_COUNT.fetch(1000)
  count_less_than_hundred = count_letters_from_0_to_99
  count_hundreds = sum([count_less_than_hundred,
                        3 * 99, # 'and'.size == 3
                        hundred * 100]) * 9
  sum([one_thousand,
       count_less_than_hundred,
       letter_counts(1..9).sum * 100,
       count_hundreds])
end

puts "#{__FILE__} #{solve}"
