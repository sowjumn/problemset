class Anagram
  def run(str1,str2)
    a1 = str1.gsub(/[^\w\s]/,'').downcase.split("")
    a2 = str2.gsub(/[^\w\s]/,'').downcase.split("")
    h1 = {}

    if a1.length != a2.length
      return false
    end

    a1.each do |a|
      if h1[a]
        h1[a] = h1[a] + 1
      else
        h1[a] = 1
      end
    end

    a2.each do |a|
      if h1[a] 
        h1[a] = h1[a] - 1
        if h1[a] < 0
          return false
        end
      else
        return false
      end
    end

    !(h1.values.any? { |a| a != 0 })
  end
end