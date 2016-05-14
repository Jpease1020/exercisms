require 'pry'
class Sieve

  def initialize(num)
    @num = num
  end

  def primes
    if @num == 1
      []
    end
    nums = (2..@num).to_a
    nums.each do |num|
      nums = nums.delete_if do |n|
        n % num == 0 && n != num
      end
    end
  end

end
