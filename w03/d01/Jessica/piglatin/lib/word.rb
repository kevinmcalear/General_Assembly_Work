class Word
  def initialize(original_word)
    @original_word = original_word
    @piglatinize = piglatinize
  end

  def original_word
    return @original_word.downcase
  end

  def piglatinize
      case original_word[0]
      when "a", "e", "i", "o", "u"
        return original_word + "way"
      else 
        vowels = ["a", "e",  "i", "o", "u"]
        counter = 0
        while !vowels.include?(original_word[counter])
          counter += 1
        end 
          return original_word[counter..-1] + original_word[0...counter] + "ay"
        end
    end
  end


# def piglatin_y
#     word_split = original_word.split(//)
#     if word_split.include?("y") && word_split[0] != "y" 
#       letters_not_y = word_split.select {|letter| letter != "y"}
#       # word_split.upto("y") { |letter| letter.shift }
#       word_split << letters_not_y + "ay"
#       return word_split.join
#     else
#       return @piglatin_word
#     end
#   end
# end