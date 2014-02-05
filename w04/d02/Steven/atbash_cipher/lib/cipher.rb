class Cipher

  # def self.encode(word)
  #   @plain = ("a".."z")to_a
  #   @cipter = ("a".."z")to_a.reverse

  #  array = string.split(" ")
  #  array = array.map do |letter|
  #   index = @plain.find_index(letter)
  #   @cipher[index]
  # end
  # return array.join


  # def self.encode (word)
  #   alphabet = ("a".."z")to_a
  #   letters = word.split("")
  #   index_new = letters.map do |a|
  #     alphabet.index(a)
  #   end

  #   new_string = index_new.map {|index| alphabet[index.to_i]}

  #   return new_string.join

#   def self.encode(word)
#     alphabet = ("a".."z")to_a
#     letters = Hash[alphabet.zip(alphabet.reverse)]
#     encoded_word = word.split("").map do |letter|
#       letters[letter]
#    end

#    return encoded_word.join(" ")
# end


def self.encode(word)
    alphabet = ("a".."z").to_a
    letters = Hash[alphabet.zip(alphabet.reverse)]
    encoded_word = word.split("").map do |letter|
      letters[letter]
    end

    return encoded_word.join("")

  end

end


