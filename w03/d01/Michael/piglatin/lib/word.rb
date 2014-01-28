class Word
  def initialize(original_word)
    @original_word = original_word
  end

  def original_word
    return @original_word.downcase
  end

  def pig_latin
    pl_word = self.original_word
    
    ## Rule 1: Word starts with a vowel
    if pl_word.start_with?("a","e","i","o","u")
      return pl_word = pl_word + "way"
    ## Rule 2:  Word starts with a consonant
    else 
      ## My original solution
      # array = pl_word.split("")
      # # first_vowel_index = array.find
      # first_letter = array.shift
      # array = array.push(first_letter) 
      # return pl_word = array.join + "ay"
      ## Shawn's solution
      # return  original_word.delete(original_word[0]) + original_word[0] + "ay"
      ## Zack's solution
      # return original_word.rindex(/[aeiou]/,3)
      ## Consonant solution
      vowels = ["a","e","i","o","u"]
      counter = 0
      while !vowels.include?( original_word[counter] )
        counter += 1
      end  
      return original_word[counter..-1] + original_word[0...counter] + "ay"
    end 
  end

end





