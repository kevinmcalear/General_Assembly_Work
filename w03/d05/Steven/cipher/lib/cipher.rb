class Cipher

# def self.encode(word)
#   cipher = { #hash of key normal letter, return is encoded}
#   cipger_array = word.split("").map {|letter| cipher[letter]}
#   cypher_array.join
# end

def self.encode(word)
plain = ["a",
 "b", "c",  "d", "e", "f", "g", "h",
  "i", "j", "k", "l", "m", "n", "o",
  "p", "q", "r", "s", "t",
  "u", "v", "w", "x", "y", "z"]
  #or plain = ("a".."z").to_a

word_array = word.downcase.split("")
new_word_index = word_array.map do |letter|
  (alpha.index(letter) - 13) 
end

new_string = new_word_index.map {|index| plain[index.to_i]}
return new_string.join

end

end



