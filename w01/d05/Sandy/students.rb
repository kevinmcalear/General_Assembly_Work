wdi = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]
# - Write a program that:
#   - Prints the name of one random student
#   - Prints the number of students in the class
#   - Prints the index of "Sandy Yu"
#   - Prints the fifth person (In this case it's Granger)
#   - Prints a list of all the student names on one line, with each name separated by a pipe: |
#   - Prints all of the students with J names (Jenn, Jennifer, Jessica, John and Julia)puts wdi.sample 
puts wdi.sample
puts wdi.length  #.size .count  
puts wdi.index("Sandy Yu") 
puts wdi[4]
print wdi.join("|")
#wdi.select {|name| print name[0] == "J"}  # did not work
j_names = students.select do |student|
  students[0] == "J"
end
 

#collections inside of other collections
#users is a hash of hashes
#"Peter" points to another hash
#within Peter is another line of hash with symbols
#
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

# 1. How would you access Jeff's Github handle (i.e. the string "jkonowitch")?
      users["Jeff"][:github]
# 2. How would you add the number 7 to PJ's favorite numbers?
      users["PJ"][:favorite_numbers].push(7)
      users["PJ"][:favorite_numbers]<< 7 #using shovel works as well
# 3. How would you add yourself to the users hash?
      etan = {:github = "etan", :favorite_numbers => [7,12,77]}
      my_hash = {}
      my_hash[:key] = "value"
      users["Etan"] = etan
# 4. How would you return the array of Peter's favorite numbers?
       puts users["Peter"][:favorite_numbers]
# 5. How would you return the smallest of Jeff's favorite numbers?
      jeff_sorted_numbers = users ["Jeff"][:favorite_numbers].sort
      puts jeff_sorted_numbers.index[0] #OR
      puts jeff_sorted_numbers.first #OR
      users["Jeff"][:favorite_numbers].min 
# 6. How would you return an array of PJ's favorite numbers that are also even?
      users["PJ"][:favorite_numbers].select do |number|
        number.even?
      end
# 7. How would you return an array of the favorite numbers common to all users?
     users["Peter"][:favorite_numbers] & users["PJ"]["favorite_numbers"] & users["jeff"][:favorite_numbers]]
# 8. How would you return an array containing all users favorite
# numbers, sorted, and excluding duplicates?
     users["Peter"][:favorite_numbers] |users["PJ"]["favorite_numbers"] |users["jeff"][:favorite_numbers].sort
# 9. How would you change Peter's favorite number 12 into the string "12"?
users["Peter"][:favorite_numbers] & useres["PJ"]["favorite_numbers"] & users["jeff"][:favorite_numbers].to_s

  







   
