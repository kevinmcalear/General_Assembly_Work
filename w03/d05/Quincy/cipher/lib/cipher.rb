class Cipher
  def initialize
    @encode = encode
  end

  def encode(word)
    array_letter = ('a'..'z').to_a
    word_split = word.split(//)
    word_pos = word_split.map (|letter| array_letter[letter]) 
    if 


end
