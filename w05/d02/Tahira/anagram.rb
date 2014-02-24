def anagram(string, list)
  anagrams = []

  list.each do |word|
    if string.split('').sort == word.split('').sort
      anagrams.push(word)
    end
  end

  return anagrams
end