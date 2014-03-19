class Fibonacci
  attr_reader :n,:final_array,:sum

  def initialize(n)
    @n = n
    @final_array = [0,1]
    @sum = 0
  end

  def perform
    (n-2).times do 
       final_array << final_array[final_array.length-1] + final_array[final_array.length-2]
       @sum = @sum + final_array.last if (final_array.last%2 == 0)
    end

    puts "I am final array #{final_array}"
    puts "I am sum of even values#{sum}"
  end
end


a = Fibonacci.new(10)
a.perform

