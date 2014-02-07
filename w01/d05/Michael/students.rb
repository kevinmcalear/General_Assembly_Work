students = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

#- Prints the name of one random student
puts students.sample
# - Prints the number of students in the class
puts students.length
# - Prints the index of "Sandy Yu"
puts students.index "Sandy Yu"
# - Prints the fifth person (In this case it's Granger)
puts students[4]
# - Prints a list of all the student names on one line, with each name separated by a pipe: |
puts students.join "|" 
# - Prints all of the students with J names (Jenn, Jennifer, Jessica, John and Julia)
puts students.select { |student| student.downcase.start_with? "j"}

students.select do |student| 
		student[0] == "J"
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

# 1. How would you access Jeff's Github handle (i.e. the string "jkonowitch")?
puts users["Jeff"][:github]
# 2. How would you add the number 7 to PJ's favorite numbers?
users["PJ"][:favorite_numbers].push(7)
puts users["PJ"][:favorite_numbers]
# 3. How would you add yourself to the users hash?
users["Michael"] = {}
puts users
# 4. How would you return the array of Peter's favorite numbers?
puts users["Peter"][:favorite_numbers]
# 5. How would you return the smallest of Jeff's favorite numbers?
jeff_number_min = users["Jeff"][:favorite_numbers].min
# 6. How would you return an array of PJ's favorite numbers that are also even?
pj_number_even = users["PJ"][:favorite_numbers].select {|number| number.even?}
# 7. How would you return an array of the favorite numbers common to all users?
users["Peter"][:favorite_numbers] & users["Jeff"][:favorite_numbers] & users["PJ"][:favorite_numbers]

# 8. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
## Check on this-- not correct. 
all_number = []
users.each { |name| all_number.push(users[name][:favorite_numbers])}
all_number.uniq!.sort!	 

# 9. How would you change Peter's favorite number 12 into the string "12"?
## Check on this
x = users.index "12"
users["Peter"][:favorite_numbers][x] = users["Peter"][:favorite_numbers][x].to_s
