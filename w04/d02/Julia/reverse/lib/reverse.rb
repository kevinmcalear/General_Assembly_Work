def reverse_words(sentence)
  new_sentence = sentence.split
  new_sentence.reverse.join(" ")
end

def reverse_each_word(sentence)
  new_sentence = sentence.split

  reversed_words = new_sentence.map do |word|
    word.reverse
  end

  reversed_words.join(" ")
  
end