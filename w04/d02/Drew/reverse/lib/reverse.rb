def reverse_words(sentence)
  sentence.split(" ").reverse.join(" ")
end

def reverse_each_word(sentence)
  split = sentence.split(" ").reverse
  reverse_words = split.map {|word| word.reverse}
  join = reverse_words.reverse.join(" ")
end