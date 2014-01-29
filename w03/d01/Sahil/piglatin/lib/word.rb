class Word
  def initialize(original_word)
    @original_word = original_word
  end

  def original_word
    return @original_word.downcase
  end

  def vowel?(char)
    ["a","e","i","o","u"].include?(char)
  end

  def convert
    word = original_word
    if vowel?(word[0])
      return word + "way"
    end
    counter = 0
    while !vowel?(word[counter])
      counter += 1
    end
    return word[counter..word.length] + word[0..counter-1] + "ay"
  end
    # elsif !vowel?(word[1])
    #   first_two_letters = word.slice!(0..1)
    #   return word + first_two_letters + "ay"
    # else
    #    first_letter = word.slice!(0)
    #    return word + first_letter + "ay"
    # end
end