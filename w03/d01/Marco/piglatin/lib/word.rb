class Word
  def initialize(original_word)
    @original_word = original_word
    # @piglatinize = piglatinize
  end

  def original_word
    return @original_word.downcase
  end

  def piglatinize
    # if @original_word[0] == "a" || @original_word[0] == "e" || @original_word[0] == "i" || @original_word[0] == "o" || @original_word[0] == "u"
    case original_word[0]
      when "a", "e", "i", "o", "u"
        return @original_word + "way"
      # elsif @original_word[0] == "y"
      #   cut_letters = @original_word.
      #   return @original_word
      else 
        # cut_letter = @original_word.byteslice(0)
        # return @original_word + cut_letter + "ay"
        # return original_word.delete(original_word[0]) + original_word[0] + "ay"
        vowels = ["a", "e", "i", "o", "u"]
        counter = 0
        while !vowels.include?(original_word[counter])
          counter += 1
        end
          return original_word[counter..-1] + original_word[0...counter] + "ay"
        
      end
    
  end

end