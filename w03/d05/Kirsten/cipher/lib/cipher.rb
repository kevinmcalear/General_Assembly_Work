# require 'pry'

class Cipher

#     def self.encode(word)
#        alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
#        shift = ["n","o","p","q","r","s","t","u","v","w","x","y","z","a","b","c","d","e","f","g","h","i","j","k","l","m"]
#     letters = word.split(//)
#     indexs = letters.map do |x| 
#       alphabet.index(x)
#     end
#     word = indexs.map { |x| shift[x] }
#     word.join
#   end
# end


def self.encode(word)
  alpha = ("a".."z").to_a
  word_array = word.split(//)
  new_index = word_array.map do |letter| 
    (alpha.index(letter) - 13)
  end
  new_string = new_index.map {|z| alpha[z.to_i]}
  return new_string.join
end
end