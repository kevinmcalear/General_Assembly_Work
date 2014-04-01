def letter_count(word)
  word_array = word.split('') - [' ']
 
  word_array.inject(Hash.new(0)) do |hash, key|
    hash[key.to_sym] +=1
    hash
  end
end