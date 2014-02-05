def reverse_words(string)
  array = string.split(" ")
  b = []
  array.each do |word|
    b.unshift(word)
  end
  b.join(" ")
end
def reverse_each_word(string)
  reverse_words(string).reverse
end