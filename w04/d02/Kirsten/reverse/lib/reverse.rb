def reverse_words(words)
  word_array = words.split
  reversed = word_array.reverse
  reversed.join(" ")
end

def reverse_each_word(words)
  word_array = words.split
  reversed = word_array.map {|word| word.reverse}
  reversed.join(" ")
  end
