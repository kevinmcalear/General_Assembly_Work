#students.rb 

names = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

  # - Prints the name of one random student

puts(names[rand(names.length)])
 puts names.sample

# - Prints the number of students in the class
puts names.length

  # - Prints the index of "Sandy Yu"
names.each do |i|
  if i == "Sandy Yu"
    puts names.index(i)
  end
end

  # - Prints the fifth person (In this case it's Granger)
puts names[4]

 # - Prints a list of all the student names on one line, with each name separated by a pipe: |
#names.each{|x| print "|#{x} |"}
puts names.join("|")

  # - Prints all of the students with J names (Jenn, Jennifer, Jessica, John and Julia)
j_array = names.select {|x| x[0] == ("J")}
puts j_array

# ### Arrays & Hashes
# **Given the following data structure:**

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
    puts users["Jeff"][:github]
# 2. How would you add the number 7 to PJ's favorite numbers?
    users["PJ"][:favorite_numbers].push(7)
    print users["PJ"][:favorite_numbers]
# 3. How would you add yourself to the users hash?    
     users["Shawn"] = {
        :github => "shawnbro",
       :favorite_numbers => [5,7,9],
     }
     puts users["Shawn"]
# 4. How would you return the array of Peter's favorite numbers?
     puts users["Peter"][:favorite_numbers]
   # 5. How would you return the smallest of Jeff's favorite numbers?
    jeff_sorted = users["Jeff"][:favorite_numbers].min
    puts jeff_sorted
# 6. How would you return an array of PJ's favorite numbers that are also even?
    puts users["PJ"][:favorite_numbers].select {|n| n.even?}
#How would you return an array of the favorite numbers common to all users?
   common_nums = [] = users.each do |name, value|
    all_nums << value[:favorite_numbers]
  end
  # use the & symbol between each array to find common elements

    # 8. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?

    array_sorted = users["Peter"][:favorite_numbers ] | users["Jeff"][:favorite_numbers]
     #pipe operator returns all unique values
     print array_sorted.sort

   
# 9. How would you change Peter's favorite number 12 into the string "12"?
users["Peter"][:favorite_numbers][0] = users["Peter"][:favorite_numbers][0].to_s
print users["Peter"][:favorite_numbers][0]
