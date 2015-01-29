class NumberOnes
  def run(num)
    count = 0
    while (num != 0)
      count += 1 if (num&1 == 1)
      num = num >> 1
    end
    count
  end

  def alt_run(num)
    count = 0
    while (num != 0)
      num = num & (num - 1)
      count += 1
    end
    count
  end
end