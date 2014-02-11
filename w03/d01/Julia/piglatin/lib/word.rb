class Word
  def initialize(original_word)
    @original_word = original_word
  end

  def original_word
    return @original_word.downcase
  end

  def piglatinize

    vowels = ["a", "e", "i", "o", "u"]
    first_letter = original_word[0]

    if vowels.include?(first_letter)
      return "#{original_word}" + "way"
    elsif original_word[0..1] == ("qu" || "squ")
      return "#{original_word[2..-1]}" + "#{original_word[0..1]}" + "ay"
    else
      return "#{original_word[1..-1]}" + "#{original_word[0]}" + "ay"
    end
   
  end
end 

# #sample of how to do the double consonant 
# while !vowels.include(original_word[counter])
#   counter += 1
# end
# return original_word[counter..-1] + original_word[0...-1] + "ay"
# end
