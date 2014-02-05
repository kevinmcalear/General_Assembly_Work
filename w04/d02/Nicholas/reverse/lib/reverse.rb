def reverse_words(words)
  separate = words.split(" ")
  separate.reverse.join(" ")
end

def reverse_each_word(word)
  separate = words.split(" ")
  changed_words = separate.map {|word| word.reverse}
  changed_words.join(" ")
end