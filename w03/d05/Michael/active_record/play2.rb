require 'pry'
require "active_record"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "michaelwagner",
  :password =>  "",
  :database => "playground"
)

begin 

class Musical < ActiveRecord::Base

  def self.list
    musicals = Musical.all
    musicals.each {|musical| puts "#{musical.id} #{musical.title}"}
  end

end 

 

puts "Welcome to Musical Manager"

puts "Please select your choice"
puts "[1] List all the musicals"
puts "[2] Add new musical"
puts "[3] Update a musical"
puts "[4] Delete a musical"
puts "[5] QUIT"

choice = gets.chomp

case choice
  when "1"
    Musical.list
   
  when "2"
    print "What is the title of the musical? "
    title = gets.chomp 
    print "Who is the composer of the musical? "
    composer = gets.chomp
    print "Who is the lyricist of the musical? "
    lyricist = gets.chomp 
    print "What is the year the musical was created? "
    year = gets.chomp
    Musical.create(:title => title, :composer => composer, :lyricist => lyricist, :year => year)

  when "3"
    
    Musical.list
    puts "Which musical would you like to update? Please enter id"
    update_musical = gets.chomp.to_i

    puts "Would you like to change the title, composer, lyricist, or year? "
    change = gets.chomp.to_sym

    puts "What is the new value? "
    new_value = gets.chomp

    Musical.update(update_musical, change => new_value )


  when "4"
    Musical.list
    puts "Which musical would you like to delete? Please enter id"
    update_musical = gets.chomp.to_i

    Musical.delete(update_musical)

  end 
end while choice != "5"

