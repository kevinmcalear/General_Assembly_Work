class Word
  def initialize(original_word)
    @original_word = original_word
  end

  def original_word
    return @original_word.downcase
  end

  def piglatinze
    case original_word[0]
    when "a", "i", "u", "e", "o"
      return original_word + "way"
    else
      vowels = ["a", "i", "u", "e", "o"]
      counter = 0
      while !vowels.include?(original_word[counter])
        counter += 1
      end
      return original_word[counter..-1] + original_word[0...counter] + "ay"
    end
  end
end
  
#   def reappend_the_end
#     new_end = @original_word[0]
#     @original_word = @original_word[1, @original_word.length]
#     @original_word << new_end
#     return @original_word 
#   end
 
#   def piglatin_end
#     new_end = @original_word[0] + "ay"
#     @original_word = @original_word[1, @original_word.length]
#     @original_word << new_end 
#     return @original_word 
#   end
  
#   def first_vowel_position
#     return @original_word.rindex(/[aiueo]/, 3)
#   end
  
#   def less_simple_piglatin
#     # determine how to split the string
#     return @original_word.first_vowel_position
#     new_end = @original_word[dividing_point] + "ay"
#     binding.pry
#     @original_word = @original_word[dividing_point, @original_word.length]
#     @original_word << new_end 
#     return @original_word 
#   end

# end