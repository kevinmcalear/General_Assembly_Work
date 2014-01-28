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
      return original_word + "way"
    else
      #return original_word.delete(original_word[0]) + original_word[0] + "ay"
      vowels = ["a,", "e", "i", "o", "u"]
      counter = 0
      while !vowels.include?(original_word[counter])
        counter += 1
      end
      return original_word[counter..-1] + original_word[0...counter] + "ay"
    end
#Haven't learned regular expressions yet, but:
# Regexp: original_word.rindex(/[aeiou]/, 3)

  end

  end

#first thing to do is check first letter
#if vow, append way
#if cons, remove cons, append cons + ay 
