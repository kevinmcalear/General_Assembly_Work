class Word
  def initialize(original_word)
    @original_word = original_word
  end

  def original_word
    return @original_word.downcase
  end

  def piggy
    vowels = ["a", "e", "i", "o", "u"]
    @first_letter = original_word[0]
      if vowels.include?(@first_letter)
       return original_word << "ay"
      else
        @word_array = @original_word.split(//)
          index_array = vowels.each do 
            |letter| @word_array.find_index(letter)
          end
        index = index_array.first
        @word_array.shift(index)
        @shortened_word = @word_array.join
        return @shortened_word << @word_array.unshift(index) << "way"
        
      end
  end



end