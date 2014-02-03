class Cipher
@@plain = ["a",
 "b",
 "c",
 "d",
 "e",
 "f",
 "g",
 "h",
 "i",
 "j",
 "k",
 "l",
 "m",
 "n",
 "o",
 "p",
 "q",
 "r",
 "s",
 "t",
 "u",
 "v",
 "w",
 "x",
 "y",
 "z"]

@@cipher = ["n",
 "o",
 "p",
 "q",
 "r",
 "s",
 "t",
 "u",
 "v",
 "w",
 "x",
 "y",
 "z",
 "a",
 "b",
 "c",
 "d",
 "e",
 "f",
 "g",
 "h",
 "i",
 "j",
 "k",
 "l",
 "m"]


def self.code(word)
  word_as_array = word.split("")
  index_in_plain = []
  index_in_plain << (word_as_array.each{|letter|@@plain.index[letter]})
  word_as_hash = Hash[word_as_array.map.with_index.to_a]
  indices = word_as_hash.values
  coded_word = []
  indices.each{|index|coded_word << (@@cipher[index])}
  coded_word.join(",").gsub(",", "")
end

#can make a hash manually matching letter to letter



end
