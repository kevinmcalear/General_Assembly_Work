class Word
  def reverse_words(word)
    phrase = word.split
    new_words = phrase.reverse
    new_phrase = new_words.join(" ")
    return new_phrase
  end

  def reverse_each_word(word)
    phrase = word.split
    new_words = phrase.map {|p| p.reverse}
    new_phrase = new_words.join(" ")
    return new_phrase
  end
end