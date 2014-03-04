class Word
  def initialize(original_word)
    @original_word = original_word
  end

  def original_word
    return @original_word.downcase
  end

  def vowel_sounds
    return original_word + "way"
  end

  def consonant_sounds
    front = ""
    middle = original_word

    original_word.split("").each_with_index do |letter, i|
      if Word.vowel?(letter, true) && i != 0 && front[-1] != "q"
        break   
      else
        front << letter
        middle.slice!(0)
      end
    end

    return middle + front + "ay"
  end

  def piglatinize
    if Word.vowel?(original_word[0]) || exception?
      return vowel_sounds
    else
      return consonant_sounds
    end
  end

  def self.vowel?(letter, include_y = false)
    if include_y
      result = ["a", "e", "i", "o", "u", "y"].include?(letter)
    else
      result = ["a", "e", "i", "o", "u"].include?(letter)
    end

    result
  end

  def exception?
    ["hours"].include?(original_word)
  end
end