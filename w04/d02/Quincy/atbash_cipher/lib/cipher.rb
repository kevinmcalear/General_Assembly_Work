class Cipher

  def encode (word)
    alpha = ("a".."z").to_a

    phrase = word.split(//)
    alpha = phrase.map do |p| 

      p.replace!
    end
    return 
  end
end