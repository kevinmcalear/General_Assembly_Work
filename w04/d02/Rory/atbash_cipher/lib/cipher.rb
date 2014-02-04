class Cipher
## 25 - existing = new index strategy
  def self.encode(plaintext)
    plain_alphabet = ('a'..'z').to_a

    plaintext_array = plaintext.split('')

    ciphertext_array = plaintext_array.map do |char|
      plain_index = plain_alphabet.index(char)
      cipher_index = 25 - plain_index
      plain_alphabet[cipher_index]
    end
      ciphertext_array.join
end
end
