#strings in C are character arrays terminated with the null character \0

class ReverseString
  def run(str)
    i = 0
    j = str.length - 1

    while (i < j)
      k = str[i]
      str[i] = str[j]
      str[j] = k
      i += 1
      j -= 1
    end
    str
  end
end