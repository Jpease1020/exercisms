class Squares
  VERSION = 2

  attr_reader :num
  def initialize(num)
    @num = num
  end

  def square_of_sum
    sum = 0
    (1..num).to_a.each do |n|
      sum += n
    end
    sum ** 2
  end

  def sum_of_squares
    sum = 0
    (1..num).to_a.each do |n|
      sum += n**2
    end
    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
