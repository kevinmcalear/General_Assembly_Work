class Anagram

  def word_sort(word)
    word.split("").sort.join("")
  end

  def splitter_sorter(words_array)
    sorted_words = words_array.map { |word| word_sort(word) }
    sorted_words
  end

  def solution(word, words_array)
    index = (splitter_sorter(words_array)).index(word_sort(word))
    words_array[index]
  end

end
