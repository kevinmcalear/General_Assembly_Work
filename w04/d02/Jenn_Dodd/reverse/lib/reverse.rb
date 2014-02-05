def reverse_words(words) 
  words_array = words.split(" ")
  words_array.reverse.join(" ")
end

def reverse_each_word(words)
  words_array = words.split(" ")
  reversed = words_array.map do |word|
   word.split('').reverse.join
 end
 reversed.join(" ")
end