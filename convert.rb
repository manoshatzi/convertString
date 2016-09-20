def iterateString(string)
  result = temp = ""
  count = 1
  string.each_byte do |i|
    if temp == i.chr then
      count = count+1
    else
      if temp != "" then
        result = result + temp + count.to_s
      end
      temp = i.chr
      count=1
    end
  end
  return result = result + temp + count.to_s
end

puts iterateString("AAAABBBCC")
