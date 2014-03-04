require 'pry'

def anagram (word, array)
  answers = []
  array.each do |test_word|
    if compare_words(word,test_word)
      answers << test_word
    end
  end
  answers
end

def compare_words(word,test_word)
  word_array = word.split("")
  test_word_array = test_word.split("")
  test_word_array1 = test_word.split("")

  word_array.each do |char|
   index = test_word_array.find_index {|test_char| char == test_char}
   if index != nil
    test_word_array.delete_at(index)
  end
  end
  if test_word_array == [] && test_word_array1.length == word_array.length
    return true
  else
    false
  end

end

puts anagram("listen", ["inlets","abdd","inletss","inless"])