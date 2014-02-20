require 'pry'

  def same_letters(word1, word2)
    word1.split("").sort == word2.split("").sort
  end


  def equals_anagram(anagram_word, *anagram_array)
    anagram_array.select{|word| same_letters(word, anagram_word)}
end

