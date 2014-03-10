require 'pry'
class Word
  def initialize(original_word)
    @original_word = original_word.downcase
    @vowels = ["a","e","i","o","u"]
  end

  def original_word
    return @original_word.downcase
  end


  # def piglatinize
  #   if @vowels.any? {|vowel| vowel == @original_word[0]}
  #     return @original_word + "way"
  #   elsif @original_word.include?("qu")
  #     split = @original_word.split("qu")
  #     return split[1] + split[0] + "qu" + "ay"
  #   else
  #     return  @original_word.delete(@original_word[0]) + (@original_word[0]) + "ay"
  #   end
  # end


  def piglatinize
    case original_word[0]
    when "a","e","i","o","u"
      return original_word + "way"
    else
      counter = 0
      while !@vowels.include?(original_word[counter])
        counter += 1
      end
      return original_word[counter..-1] + original_word[0...counter] + "ay"
    end
  end
end