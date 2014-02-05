
  def reverse_words(sentence)
    split_sentence = sentence.split
    new_words = split_sentence.reverse
    sentence = new_words.join(" ")
    return sentence
  end

  def reverse_each_word(sentence)
    split_sentence = sentence.split
    new_words = split_sentence.map {|word| word.reverse}
    sentence = new_words.join(" ")
    return sentence
  end
