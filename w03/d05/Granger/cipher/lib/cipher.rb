class Cipher

  def self.encode(word, rot = 13)
    arr = word.split('').map do |letter|
      rot.times {letter = letter.next}
      if letter == "-"
        letter = " "
      else
        letter = letter[-1]
      end
      letter
    end

    new_word = arr.join('')
  end

end
