require 'prime'
require 'pry'
class Raindrops

  def self.convert(num)
    string = ""
    if num == 1
      string += "1"
    end
    if prime_check(num).include?(3)
      string += "Pling"
    end
    if prime_check(num).include?(5)
      string += "Plang"
    end
    if prime_check(num).include?(7)
      string += "Plong"
    end
    if string == ""
      string = num.to_s
    end
    string
  end

  def self.prime_check(num)
    Prime.prime_division(num).flatten
  end

end
