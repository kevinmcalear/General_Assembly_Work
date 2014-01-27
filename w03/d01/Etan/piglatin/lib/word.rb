class Word
  def initialize(original_word)
    @original_word = original_word
    @piglatin_vowel = piglatin_vowel
    @piglatin_con = piglatin_con
  end

  def original_word
    return @original_word.downcase
  end

  def piglatin_vowel
    return @piglatin_vowel
  end

  def piglatin_con
    return @piglatin_con
  end
  
  def piglatin
    if @original_word[0] == "a" || @original_word[0] == "e" || @original_word[0] == "i" || @original_word[0] == "o" || @original_word[0] == "u" || @original_word[0] == "y"
      @piglatin_vowel = @original_word
      return @piglatin_vowel.upcase
    else
      @piglatin_con = @original_word
      return @piglatin_con.downcase
    end
  end

  def latin_time_vowel
    if @original_word[0] == "a" || @original_word[0] == "e" || @original_word[0] == "i" || @original_word[0] == "o" || @original_word[0] == "u" || @original_word[0] == "y"
      @piglatin_vowel = @original_word
      return @piglatin_vowel.upcase << "WAY"
    else
      @piglatin_con = @original_word
      last_letter = @piglatin_con.slice(0)
      @piglatin_con.slice!(0)
      return @piglatin_con + last_letter + "ay"
    end
  end


end

