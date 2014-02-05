require 'pry'

class Cipher

  # def self.encode(word)
  #   alphabet = ("a".."z").to_a
  #   cipher = ("a".."z").to_a.reverse
  #   #cipher = "zyxwvutsrqponmlkjihgfedcba"
    
  #   split_word = word.split(//)

  #   new_array = split_word.map do|letter| 
  #     letter_index = alphabet.find_index(letter)
  #     cipher[letter_index]
      
  #     # binding.pry
  #   end

  #   return new_array.join
  # end

  def self.encode(word)

    alphabet = ("a".."z").to_a
    cipher = ("a".."z").to_a.reverse

    letters = Hash[alphabet.zip(cipher)]

    # return word.gsub(/./) {|character| letters[character]}

    encoded_word = word.split(//).map {|letter| letters[letter]}
    return 
  end
end