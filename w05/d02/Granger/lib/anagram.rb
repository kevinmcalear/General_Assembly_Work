def anagram(word, possible_matches)
  letters = word.split("")
  matches = []

  possible_matches.each do |possible_match|
    if letters.sort == possible_match.split("").sort
      matches << possible_match
    end
  end

  return matches
end