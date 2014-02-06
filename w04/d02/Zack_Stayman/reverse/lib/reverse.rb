def reverse_words(string)

  array = string.split(" ")
  array.reverse!
  array = array.join(" ")
  return array

end

def reverse_each_word(string)

  array = string.split(" ")
  array.map do |word|
    word.reverse!
  end

  return array.join(" ")


end