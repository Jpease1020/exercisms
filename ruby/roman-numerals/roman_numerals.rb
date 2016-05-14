require 'pry'
class Fixnum
  VERSION = 1

  def incriment_nums
    [1, 5, 10, 50, 100, 500, 1000]
  end

  def roman_letter_hash
    { 1 => "I",
      5 => "V",
      10 => "X",
      50 => "L",
      100 => "C",
      500 => "D",
      1000 => "M" }
  end

  def eighty_or_ninety_percent(n)
    if n.to_s.start_with?('5')
      n * 8 / 10
    else
      n * 9 /10
    end
  end

  def prepend_letter(num)
    if num < 10
      l = "I"
    elsif num < 100
      l = "X"
    elsif num < 1000
      l = "C"
    end
  end

  def run_numerals(str, num, counter = -1)
    level = incriment_nums[counter]
    letter = roman_letter_hash[level]
    str += (letter * (num / level))
    remainder = num % level

    if remainder == 0
    elsif remainder >= eighty_or_ninety_percent(level)
      counter -= 1
      str += prepend_letter(remainder) + letter
      str = run_numerals(str, remainder - eighty_or_ninety_percent(level), counter)
    else
      counter -= 1
      str = run_numerals(str, remainder, counter)
    end
    str
  end

  def to_roman
    str = ""
    num = self
    run_numerals(str, num)
  end
end
