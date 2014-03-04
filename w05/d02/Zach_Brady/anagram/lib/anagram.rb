#class Anagram

  def match(word_to_match, list_of_words)
    # checks to see if two words' letters match
    word_to_match = sorter(word_to_match)

    list_of_words.each do |word|
      sorted_word = sorter(word)
      if word_to_match == sorted_word
        return word
      end
    end
  end
  

  def sorter(word)
    word= word.downcase
    words_letters = []
    word.each_char {|char| words_letters.push(char) }
    words_letters = words_letters.sort
    return words_letters
  end 

#end

puts match("listen", ["enlists", "google", "inlets", "banana"])