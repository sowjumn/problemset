class PowerOf2
  def run(num)
    return false if (num == 0)
    num & (num - 1) == 0 
  end
end