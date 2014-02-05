def reverse_words(sentence)
  sentence_array = sentence.split(' ')
  sentence_array.reverse!
  reversed_sentence = sentence_array.join(' ')
  return reversed_sentence
end

def reverse_each_word(sentence)
  sentence_array = sentence.split(' ')
  sentence_array.each do |word|
    word.reverse!
  end
  sentence_array.join(' ')
end