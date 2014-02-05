
def reverse_words(phrase)
  words_array = phrase.split(" ")
  reversed_sentence = (words_array.reverse).join(" ")
  return reversed_sentence
end
def reverse_each_word(phrase)
  word_array = phrase.split(" ")
  sent_with_words_reversed = word_array.map{|word|word.reverse}
  return sent_with_words_reversed.join(" ")
end