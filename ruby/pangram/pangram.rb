require 'pry'
class Pangram
  VERSION = 1
  def self.is_pangram?(str)
    if str == ""
      return false
    end
    str = str.downcase.chars.keep_if do |l|
      ('a'..'z').to_a.include?(l)
    end
    ('a'..'z').all? do |l|
      str.to_a.include?(l)
    end
  end
end
