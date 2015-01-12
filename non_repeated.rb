class NonRepeated
  def find(str)
    h = {}

    str.chars.each do |s|
      if h[s]
        h[s] = h[s] + 1
      else
        h[s] = 1
      end
    end

    h.each do |k,v|
      return k if v == 1
    end
  end
end