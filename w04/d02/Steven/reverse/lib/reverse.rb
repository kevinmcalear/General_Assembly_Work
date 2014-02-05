def reverse_words(words)
  words_array = words.split(" ")
  words_array.reverse.join(" ")
end

def reverse_each_word(words)
  words_array = words.split(" ")
  reverse = words_array.map do |word|
    puts word.reverse
  end

  reverse.join(" ")
  
end
