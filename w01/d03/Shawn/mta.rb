mta = {
  :n => ["TS", "34th", "28th", "23rd", "US", "8th"],
  :l => ["8th", "6th", "US", "3rd", "1st"],
  :six => ["GC", "33rd", "28th", "23rd", "US", "Astor"],
  #:one => ["59th", "50th", "TS", "34th", "28th"]
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

    if exit_point == "US"
      puts "Which train would you like to transfer to?"
      mta.each do |key, value|
        puts key
      end
      transfer = gets.chomp
      puts "The #{transfer.to_sym} has the following stops:"
      puts mta[transfer.to_sym]
      puts "Where will you get off the transfer?"
      transfer_stop = gets.chomp
    end

 entry_index = mta[which_line.to_sym].index(entry_point)
 exit_index = mta[which_line.to_sym].index(exit_point)

 transfer_index = exit_index
 transfer_exit_index = mta[transfer.to_sym].index(transfer_stop)

stops = (exit_index - entry_index).abs
transfer_stops = (transfer_exit_index - transfer_index).abs
total_stops = stops + transfer_stops


  puts "Okay... it will take you #{total_stops} stops..."
  puts "Bon voyage..."
end    

lets_get_started(mta)

