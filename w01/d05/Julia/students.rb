students = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger
Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer
Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten
Doyne","Marco Pretell- Vazquez","Michael Wagner","Nicholas Bundy","Pierre
Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn
Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

=begin
- Write a program that:
  - Prints the name of one random student
  - Prints the number of students in the class
  - Prints the index of "Sandy Yu"
  - Prints the fifth person (In this case it's Granger)
  - Prints a list of all the student names on one line, with each name separated by a pipe: |
  - Prints all of the students with J names (Jenn, Jennifer, Jessica, John and Julia)

=end

puts "A random student's name: #{students.sample}!"

puts "The total class size is: #{students.size}!"

puts "Sandy Yu is stored at index #{students.index("Sandy Yu")}"

puts "The fifth student in the array is: #{students[4]}"

puts "These are all the students names:"
puts students.join("|")


puts "These are all the students whose names begin with 'J'"
students.select do |name|
  first_letter = name[0].split.first
  if first_letter == "J"
    puts name
  end
end

users = {
      "Peter" => {
        :github => "peterylai",
        :favorite_numbers => [12, 42, 75],
      },
      "PJ" => {
        :github => "h4w5",
        :favorite_numbers => [8, 12, 24],
      },
      "Jeff" => {
        :github => "jkonowitch",
        :favorite_numbers => [12, 14, 85],
      },
    }
=begin
1. How would you access Jeff's Github handle (i.e. the string "jkonowitch")?
2. How would you add the number 7 to PJ's favorite numbers?
3. How would you add yourself to the users hash?
4. How would you return the array of Peter's favorite numbers?
5. How would you return the smallest of Jeff's favorite numbers?
6. How would you return an array of PJ's favorite numbers that are also even?
7. How would you return an array of the favorite numbers common to all users?
8. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
9. How would you change Peter's favorite number 12 into the string "12"?
=end


puts "Jeff's Github handle is: #{users["Jeff"][:github]}"

puts "I am adding the number 7 to PJ's favorite numbers:"
users["PJ"][:favorite_numbers].push(7)
puts users["PJ"][:favorite_numbers]

users["Julia"] = {:github => "lovettlovett", :favorite_numbers => [3, 31]}
puts users["Julia"]

puts "Peter's favorite numbers are: #{users["Peter"][:favorite_numbers]}"

puts "Jeff's smallest favorite number is:"
jeff_sorted_numbers = users["Jeff"][:favorite_numbers].sort!
  puts jeff_sorted_numbers[0]
  #puts sorted_numbers[0]

puts "PJ's Favorite even numbers are:"
users["PJ"][:favorite_numbers].each do |number|
  if number % 2 == 0
    puts number
  end
end

#or find shared numbers using the & 

puts "These are the shared favorite numbers:"
all_nums = []
users.each do |person, value|
  all_nums << value[:favorite_numbers]
  all_nums.flatten
  puts all_nums.uniq
end

# gets everything | - unique
#Find all users' favorite numbers, sorted, and excluding duplicates
all_numbers = users["Peter"][:favorite_numbers] | users["Jeff"][:favorite_numbers] | users["PJ"][:favorite_numbers]
all_numbers.sort

#how to change Peter's favorite number, 12, into the string 12
users["Peter"][:favorte_numbers][0] = "2"

