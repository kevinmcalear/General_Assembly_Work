 class Cipher

  def self.encode(word)
    plain =  "abcdefghijklmnopqrstuvwxyz"
    cipher =   "nopqrstuvwxyzabcdefghijklm"
    i = 0 
    cipher_word = ""
    word = word.downcase
    while i < word.length
      plain_pos = plain.index(word[i]).to_i
      if plain_pos <= 13
        cipher_pos = plain_pos + 13
      else
        cipher_pos = plain_pos - 13
      end
      cipher_word += plain[cipher_pos] 
      i += 1
    end
    return cipher_word
  end
 end

puts Cipher.encode("peter")