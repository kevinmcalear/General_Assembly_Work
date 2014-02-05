class Cipher

def self.encode(word)
  cipher = {"a" => "n", "b" => "o", "c" => "p", "d" => "q", "e" => "r", "f" => "s", "g" => "t", "h" => "u", "i" => "v", "j" => "w", "k" => "x", "l" => "y", "m" => "z", "n" => "a", "o" => "b", "p" => "c", "q" => "d", "r" => "e", "s" => "f", "t" => "g", "u" => "h", "v" => "i", "w" => "j", "x" => "k", "y" => "l", "z" => "m", " " => " " }
  cypher_array = word.split('').map { | letter | cipher[letter] } 
  cypher_array.join
end

def self.encode_more(sentence)
  words = sentence.split(" ")
  cypher_words = words.map { | word | encode(word) }
  cypher_words.join(" ")
end

end
