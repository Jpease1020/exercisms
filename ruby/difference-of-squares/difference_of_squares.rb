class Squares
  VERSION = 2

  attr_reader :num
  def initialize(num)
    @num = num
  end

  def square_of_sum
    (1..num).reduce(0, :+) ** 2
  end

  def sum_of_squares
    (1..num).inject(0) { |sum, n| sum += n**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
