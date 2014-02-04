def reverse_words(words)
  word_array = words.split(" ")
  result = []
  word_array.each do |word|
    result.unshift(word)
  end
  return result.join(" ")
end

def reverse_each_word(words)
  word_array = words.split(" ")
  result = word_array.map do |word|
    word.reverse
  end
  return result.join(" ")
end