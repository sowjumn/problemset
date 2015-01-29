class MergeSort

  def run(A,temp=[],left,right)
  end

  def merge(a1,a2)
    k = a1.length + a2.length - 1

    i = 0
    j = 0
    b = []

    (0..k).to_a.each do |p|
      if i == a1.length
        b = b + (a2[j..(a2.length - 1)])
        break
      end

      if j == a2.length
        b = b + (a1[i..(a1.length - 1)])
        break
      end

      if a1[i] < a2[j]
        b.push(a1[i])
        i = i + 1
      else
        b.push(a2[j])
        j = j + 1
      end
    end

    return b
  end
end

puts MergeSort.new.merge([1,6, 9], [2, 4, 10, 12]).inspect