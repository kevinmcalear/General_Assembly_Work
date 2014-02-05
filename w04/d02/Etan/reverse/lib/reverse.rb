def reverse_words(input)

  seperated_words = input.split
  return seperated_words.reverse.join(" ")

end

def reverse_each_word(input)
  seperated_words = input.split
  reverse_words = seperated_words.reverse.join(" ")
  return reverse_words.reverse
end