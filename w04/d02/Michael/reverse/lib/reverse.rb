def reverse_words(string)
  array = string.split
  reverse_array = array.reverse
  return reverse_array.join(" ")
end 

def reverse_each_word(string)
  array = string.split
  reverse_each_word = array.map {|wocdrd| word.reverse}
  return reverse_each_word.join(" ")

end 