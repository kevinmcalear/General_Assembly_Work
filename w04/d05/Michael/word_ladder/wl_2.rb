## Draft TWO:  Word Chain

### Write Test Case
### Create Method to validate whether the string is four characters. 

### Create a neighbors method

def are_neighbors?(word1,word2)
  counter = 0
  4.times do |index|
    if word1|index| == word2|index|
      counter+=0
    end 
  end 
  return counter == 3
end 

### Find all the neighbors: 
def all_neighbords(base_word)
  
  matches = four_letter_words.select do |match_word|
    are_neighbors?(base_word, match_word)
  end  

  return matches
  
end



