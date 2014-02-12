require 'rspec'

def Anagram

  def initialize (word)
    @sorted = word.downcase.chars.sort
  end

  def anagram_of?(word_1, *others)
    @sorted == word_1.downcase.chars.sort
  end

  
end

