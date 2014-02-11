def anagram(word, possible_matches)
  letters = word.split("")
  matches = []

  possible_matches.select do |possible_match|
    letters.sort == possible_match.split("").sort
  end
end