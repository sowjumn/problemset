class UnderstandProc

  def product(*a)
    prod = 1
    a.each do |i|
      prod = yield(i,prod)
    end

    puts prod
  end

  def alternate_prod(*a,&b)
    prod = 1
    a.each do |i|
      prod = b.call(i,prod)
    end

    puts prod
  end
end

UnderstandProc.new.product(2,3,4) {|i,prod| prod*i}
UnderstandProc.new.alternate_prod(3,4,5) {|i,prod| prod*i}