class FindPairsSum
  attr_reader :given_array, :sum 

  def initialize(given_array,sum)
    @given_array = given_array
    @sum = sum
  end

  def perform
    my_hash = Hash.new(0)
    final_array = []

    given_array.each do |a|
      my_hash[a] = my_hash[a] + 1
    end

    given_array.each do |a|
      my_hash[a] = my_hash[a] - 1
      b = sum - a 
      if (my_hash[b] != 0)
        final_array << [a,b] 
        my_hash[b] = my_hash[b] - 1
      end
    end

    final_array
  end
end