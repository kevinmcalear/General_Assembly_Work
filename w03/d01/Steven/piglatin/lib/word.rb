class Word
  def initialize(original_word)
    @original_word = original_word
    #@piglatinize = []
  end

  def original_word
    return @original_word.downcase
  end

  def piglatinize
    case original_word[0]
    when "a", "e", "i", "o", "u"
      return original_word + "way"
    else
      #return original_word.delete(original_word[0]) + original_word[0] + "ay"
      # pig_latin_word = original_word.partition(/[aeiou]/)
      # pig_latin_word << pig_latin_word.shift
      # pig_latin_word.push("ay")  
      # return pig_latin_word.join
      vowells = ["a", "e", "i", "o", "u"]
      counter = 0
      while !vowells.include?(original_word[counter])
        counter += 1
        end
      return original_word[counter..-1] + original_word[0...counter] + "ay"
      end
    end
    end
  end

end




# #vowell = ["a", "e", "i", "o", "u"]
#     if word[0].include?(/[aeiou]/)
#       puts word + "way"
#     else
#       pig_latin_word = word.name.partition(/[aeiou]/)
#       pig_latin_word << pig_latin_word.shift
#       pig_latin_word.push("ay")
#       pig_latin_word.join   
#       puts pig_latin_word
#     end