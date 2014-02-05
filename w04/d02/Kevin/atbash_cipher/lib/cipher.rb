class Cipher
  
  def self.encode(normal_word)
    # This is my encoder setup for the arrays
    letters = ('a'..'z').to_a
    coded_letters = letters.reverse
    
    # This is how I get the word into an array
    normal_array = normal_word.split('')
    
    # This is how I swap out coded letters for the normal ones and put them into its own array
    coded_array = normal_array.map do |char|
      coded_letters[letters.index(char)]
    end

    # This is where I return the coded array as a single string
    coded_array.join

  end

end

