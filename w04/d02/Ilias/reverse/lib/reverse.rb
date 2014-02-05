def reverse_words(sentence)

  word_array = sentence.split(" ")

  word_count = word_array.count

  reverse_array = []

  word_array.each_with_index do |word, index|
    reverse_array[word_count - index] = "#{word}"
  end

  reverse_string = reverse_array.join(" ")[1..-1]

  return reverse_string

end



def reverse_each_word(sentence)
  word_array = sentence.split(" ")
  reversed_words = []

  word_array.each do |word|
    reversed_words << word.reverse
  end

  reversed_string = reversed_words.join(" ")

  return reversed_string

end
