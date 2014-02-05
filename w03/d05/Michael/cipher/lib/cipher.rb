class Cipher
  
  def self.encode(word)
    ##Step 1:  Establish Alpha Array
    alpha = ("a".."z").to_a
    # alpha = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","y","x","y","z" ]
    ##Step 2:  Convert Word string into Array
    word_array = word.downcase.split("")
    ##Step 3:  Create array of cipher-ed index
    new_word_index = word_array.map do |letter| 
        # if alpha.index(letter) + 13 > 26
             (alpha.index(letter) - 13) 
             # (alpha.index(letter) + 13) % 26
        # else alpha.index(letter) + 13
        # end 
      end
    ##Step 4:  Create new strings based on index of previous 
    new_string = new_word_index.map {|index| alpha[index.to_i]}
    ##Step 5:  Return new array as a string
    return new_string.join
  
  end 
end
