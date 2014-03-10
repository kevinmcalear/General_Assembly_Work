require 'pry'


def reverse_words(sentence)
  words = sentence.split
  reverse_words =  words.reverse
  return reverse_words.join(" ")
end

def reverse_each_word(sentence)
  words = sentence.split
  each_reverse = words.map {|word| word.reverse! }
  return each_reverse.join(" ")
end

reverse_words("We are never ever ever getting back together")
reverse_each_word("We are never ever ever getting back together")
