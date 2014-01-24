# Return an array with just the names of all the characters
  require 'csv'
  csv = CSV.read('potter.csv', :headers => true, :header_converters => :symbol)
    
    # print csv[:names]

#Return an array with all the characters with more than 500 mentions. 

  def character_mentions_500
    csv = CSV.read('potter.csv', :headers => true, :header_converters => :symbol)
    csv[:mentions].select {|num| num.to_i >500}
  end
      character_mentions_500.each{ |names| print csv[:names]}

# Return an array with all the characters with one word names. 

f.close

