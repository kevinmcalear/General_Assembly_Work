class Word
  def initialize(original_word)
    @original_word = original_word
  end

  def original_word
    return @original_word.downcase
  end

  def vowel?
    vowels = ['a','e','i','o','u','A','E','I','O','U']
    return true if vowels.include?(original_word[0])
    return false
  end

  def consonant
    vowels = ['a','e','i','o','u','A','E','I','O','U','y','Y']
    word_array = original_word.split("")
    consonants = []
    idx = 0
    while !vowels.include?(original_word[idx])
        consonants << word_array.shift
      idx += 1
    end
    consonants = consonants.join("")

    # if word_array[0] + word_array[1] == "qu"
    #   consonant = word_array.shift
    #   consonant = consonant + word_array.shift
    # elsif word_array[0] + word_array[1] == "rh"
    #   consonant = word_array.shift
    #   consonant = consonant + word_array.shift
    # else
    #   consonant = word_array.shift
    # end
    return (word_array << consonants).join("")
  end
  
  def piglatinize
    if vowel? == true
      return original_word + "way"
    elsif vowel? == false
      return consonant + "ay"
    end
  end

end