class Anagram
  def decode(name)
    return name
  end

  def decoder(word_1, word_2)
    array1 = word_1.split(//)
    array2 = word_2.split(//)
    words_split = array1 & array2
    if words_split.count == array1.count || words_split.count == array2.count
      return true
    else
      return false
    end
  end

  def decode_me()
end
