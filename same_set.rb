class SameSet
  attr_reader :arr1, :arr2

  def initialize(arr1,arr2)
    @arr1 = arr1
    @arr2 = arr2
  end

  def perform 
    first_hash = Hash.new(0)

    arr1.each do |a|
      first_hash[a] = first_hash[a] + 1
    end

    arr2.each do |b|
      first_hash[b] = first_hash[b] - 1
    end

    first_hash.each do |k,v|
      return false if v!=0
    end

    true
  end
end