class Cipher
  def self.encode(word)
    letter_arr = ("a" .. "z"). to_a
    arr = word.chars.map do |
      letter|
      arr_index = (letter_arr.
        index(letter) - 26).
      abs - 1
      letter_arr[arr_index]
    end

    return arr.join ("")
  end

 def self.encode2(word)
    alphabet = ("a".."z").to_a
    letters = Hash[alphabet.zip(alphabet.reverse)]
    encoded_word = word.split("").map do |letter|
      letters[letter]
    end

    return encoded_word.join("")



    # return word.gsub(/./) {|character| letters[character]}
  end