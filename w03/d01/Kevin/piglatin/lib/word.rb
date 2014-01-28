class Word
  def initialize(original_word)
    @original_word = original_word
  end

  def original_word
    return @original_word.downcase
  end

  def   piglatinize
    first_letter = @original_word[0]
    no_first_letter = @original_word.delete(@original_word[0])
    first_two = @original_word[0] + @original_word[1]
    two_letter = @original_word.delete(@original_word[0])
    no_two_letter = two_letter.delete(two_letter[0])
    three_letter = @original_word.delete(@original_word[0])
    three_letters = three_letter.delete(three_letter[0])
    no_three_letter = three_letters.delete(three_letters[0])
    first_three = @original_word[0] + @original_word[1] + @original_word[2]
    
    if @original_word[0] != "a" && @original_word[0] != "e" && @original_word[0] != "i" && @original_word[0] != "o" && @original_word[0] != "u"
      return no_first_letter + first_letter + "ay"
    
    elsif first_two == "qu"
      return no_two_letter + first_two + "ay"

    elsif first_three == "squ"
      return no_three_letter + first_three + "ay"
    
    else
      return @original_word + "way"
    end
  end

  end