class SwapInplace
  attr_reader :a,:b

  def initialize(a,b)
    @a = a
    @b = b
  end

  def swap
    @a = a + b 
    @b = a - b 
    @a = a - b 
  end
end

s = SwapInplace.new(2,3)
puts "the value of a before the swap is #{s.a}"
puts "the value of b before the swap is #{s.b}"

s.swap

puts "the value of a after the swap is #{s.a}"
puts "the value of b after the swap is #{s.b}"
