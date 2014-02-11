def anagram(word, possible_matches)
  possible_matches.select do |possible_match|
    word.chars.sort == possible_match.chars.sort
  end
end