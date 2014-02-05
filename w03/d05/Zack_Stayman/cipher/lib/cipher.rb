class Cipher
  def self.encode(word)
    alpha = ("a".."z").to_a

    code = ("n".."z").to_a
    hold = ("a".."m").to_a
    code = code.concat(hold).compact

    word.each_char do |letter|  
      letter.gsub(letter, code[alpha.index(letter)])
    end
  end
end
