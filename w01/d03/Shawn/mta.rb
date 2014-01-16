mta = {
  :n => ["TS", "34th", "28th", "23rd", "US", "8th"],
  :l => ["8th", "6th", "US", "3rd", "1st"],
  :six => ["GC", "33rd", "28th", "23rd", "US", "Astor Pl"],
  :one => ["59th", "50th", "TS", "34th", "28th"]
}

def lets_get_started(mta)
    puts "What line would you like to take?" 
    mta.each do |key, value|
    puts key
end
    which_line = gets.chomp
    puts "The #{which_line.to_sym} has the following stops:"
    puts mta[which_line.to_sym]

    puts "What stop would you like to get on?"
    entry_point = gets.chomp
    puts "...and where will you be getting off the train?..."
    exit_point = gets.chomp

 entry_index = mta[which_line.to_sym].index(entry_point)
 exit_index = mta[which_line.to_sym].index(exit_point)

 puts "Okay... it will take you #{(exit_index - entry_index).abs} stops..."
 puts "Bon voyage..."
end    

lets_get_started(mta)

