def reverse_words(words)
  split = words.split
  split.reverse.join( " " )
end

def reverse_each_word(words)
  arr = words.split
   new_arr = arr.each do |word|
    word.reverse!
 end
 new_arr.join(" ")
end