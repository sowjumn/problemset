class FindPairsDifferentSets
  attr_reader :arr1, :arr2, :sum

  def initialize(arr1,arr2,sum)
    @arr1 = arr1
    @arr2 = arr2
    @sum = sum
  end

  def perform
    my_hash = Hash.new(0)
    output_arr = []

    arr1.each do |a|
      my_hash[a] = my_hash[a] + 1
    end

    arr2.each do |b|
      val = sum - b
      if my_hash[val] != 0
        my_hash[val] = my_hash[val] - 1
        output_arr << [val,b]
      end
    end

    output_arr
  end
end