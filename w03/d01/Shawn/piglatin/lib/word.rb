class Word
  
  def initialize(original_word)
    @original_word = original_word
  end

  def original_word
    return @original_word.downcase
  end


  def piglatinize
    case original_word[0] 
    when "a", "e", "i", "o", "u"
        return original_word   + "way"
    else 
       #original_word.delete(original_word[0]) + original_word[0] + "ay"
       vowels = ["a", "e", "i", "o", "u"]
       counter = 0
       while !vowels.include?(original_word[counter])
        counter += 1
      end
      original_word[counter..-1] + original_word[0...counter] + "ay"
    end
  end
end