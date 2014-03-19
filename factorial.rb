class Factorial
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def perform
    raise if num < 0
    return 1 if num == 0
    val = 1
    (1..num).each do |p|
      val = val * p
    end
    val
  end 
end