def reverse_words(sentence)
  sentence.split(" ").reverse.join(" ")
end

def reverse_each_word(sentence)
  word_arr = sentence.split(" ").map do |word|
    word.reverse
  end
  word_arr.join(" ")
end