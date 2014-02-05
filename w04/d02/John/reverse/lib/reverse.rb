def reverse_words(text)
  reversed_sentence = text.split(" ").reverse
  return reversed_sentence.join(" ")
end

def reverse_each_word(text)
  reversed_words = text.split(" ").map { |word| word.reverse }
  return reversed_words.join(" ")
end