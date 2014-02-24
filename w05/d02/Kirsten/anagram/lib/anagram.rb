require 'pry'

def anagram?(word_1, word_2)
  split_1 = word_1.downcase.split(//).to_a.sort
  split_2 = word_2.downcase.split(//).to_a.sort
  if split_1 == split_2
    return true
  else
    return false
  end
end

def which_is_anagram(word_1, array_1)
  new_array = array_1.select do |word|
    anagram?(word_1,word)
  end
  new_array.to_s
end