class Word
  def initialize(original_word)
    @original_word = original_word
  end

  def original_word
    return @original_word.downcase
  end


  def latinator(word)
    vowels = ['a','e','i','o','u']
    if vowels.include?(word[0])
      return "#{word}way"
    else
      diced_word = word.split("")
      while !vowels.include?(diced_word[0])
        take_off = diced_word.shift
        diced_word << take_off
      end
      final_word = diced_word.join("")
      return "#{final_word}ay"
    end
  end
end


