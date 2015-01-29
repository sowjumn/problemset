#print out all possible permutations of this set. 
#If the set is { a, b, c }, then the set of permutations is 
#   { (a,b,c), (a,c,b), (b,a,c), (b,c,a), (c, a, b), (c, b, a) }

class Set
  attr_reader :items

  def initialize(items=nil)
    @items = items
  end

  def display_permutations
    permu(items,0,items.length-1)
  end

  def permu(list,i,n)
    #generate all permutations of list[i] to list[n]
    if i == n
      0.upto(n) do |j|
        print list[j]
      end
      puts
    else
      #list[i] to list[n] has more than one permutation generate them recursively
      i.upto(n) do |j|
        k = list[j]
        list[j] = list[i]
        list[i] = k
        permu(list,i+1,n)
        k = list[j]
        list[j] = list[i]
        list[i] = k
      end
    end
  end

  def intersection(arr1,arr2)
    u = {}
    final_inter = []

    arr1.each do |a|
      u[a] = 1
    end

    arr2.each do |b|
      final_inter.push(b) if u[b]
    end
    final_inter
  end

  def combinations(n)
    return if n > self.items.length
    comb = []
    0.upto(self.items.length-1) do |i|
      comb.push(items[0])
    end
  end
end

puts Set.new.intersection([1,4,5,6,4], [5,2,4,2,1]).inspect


Set.new(['a','b','c']).display_permutations