

# class Cipher

#   def self.encode(word)
#     original = ('a'..'z').to_a
#     changed = original.to_a.reverse
#     split_word = word.split("")
#     split_word.each do |letter|
#       spot = original.index(letter)
#       find_letter = changed[spot]
#       split_word[spot] = find_letter
#     end
#   end
# end

class Cipher
@plain = ('a'..'z').to_a
@encode = ('a'..'z').to_a.reverse

def self.encode(string)
  array = string.split("")
  array = array.map do |letter|
    index = @plain.find_index(letter)
    @encode[index]
  end
  return array.join
end
end

# def self.encode2(word)
#     alphabet = ("a".."z").to_a
#     letters = Hash[alphabet.zip(alphabet.reverse)]
#     encoded_word = word.split("").map do |letter|
#       letters[letter]
#     end

#     return encoded_word.join("")



#     # return word.gsub(/./) {|character| letters[character]}
#   end