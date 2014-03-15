class FindDuplicates
  attr_reader :my_str

  def initialize(my_str)
    @my_str = my_str
  end

  def perform
    my_str_arr = my_str.split('')
    final_arr = []
    temp_hash = Hash.new(0)

    my_str_arr.each do |a|
      temp_hash[a] = temp_hash[a] + 1
      final_arr << a if temp_hash[a] == 2
    end
    final_arr
  end
end