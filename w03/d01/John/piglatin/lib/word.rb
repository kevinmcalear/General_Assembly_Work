require 'pry'
class Word
  def initialize(original_word)
    @original_word = original_word
    @vowels = ['a', 'e', 'i', 'o', 'u']
  end

  def original_word
    return @original_word.downcase
  end

  def vowels
    return @vowels
  end

  def letter_is_vowel?(letter)
    self.vowels.each do |vowel|
      return true if letter == vowel
    end
    return false
  end

  def piglatinize
    new_word = self.original_word
    starts_with_vowel = letter_is_vowel?(new_word[0])
  
    if starts_with_vowel == true
        return new_word + "way"

    else
      counter = 0
      while !vowels.include?(original_word[counter])
        counter += 1
      end
      return original_word[counter..-1] + original_word[0...counter] + "ay"
    end
  end
end