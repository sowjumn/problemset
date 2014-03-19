class FindPrimes
  attr_reader :limit
  #A prime number is a natural number greater than 1 that has no positive divisors other than 1 and itself.
  #A divisor of an integer n, also called a factor of n, is an integer that can be multiplied by some other integer to produce n
  #One way to test if a number is prime is to check whether n is a multiple of any integer between 2 and sqrt(n)
  def initialize(limit=nil)
    @limit = limit || 10
  end

  def perform
    final_array = []
    (2..limit).each do |p|
      multiple = Math.sqrt(p).round
      if multiple < 2
        final_array << p
        next
      end
      if is_prime?(p)
        final_array << p
      end
    end

    final_array
  end

  def is_prime?(num)
    (2..Math.sqrt(num).round).each do |q|
      return false if num%q == 0
    end
    true
  end

end


  