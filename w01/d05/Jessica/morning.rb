# #Morning Exercise

# ### Students
# - Create a file called students.rb
# - Here is an array containing all your names
```
students = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]
```
students.sample
students.count
students.index("Sandy Yu")
students[4]
students.each{|student| print student}

puts students.join("|")}

students.map{|student| student.split}
students.select{|student| student[0].include?("J")}

# - Write a program that:
#   - Prints the name of one random student
#   - Prints the number of students in the class
#   - Prints the index of "Sandy Yu"
#   - Prints the fifth person (In this case it's Granger)
#   - Prints a list of all the student names on one line, with each name separated by a pipe: |
#   - Prints all of the students with J names (Jenn, Jennifer, Jessica, John and Julia)

### Arrays & Hashes
**Given the following data structure:**

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

    users["Jeff"][:github]
    users["PJ"][:favorite_numbers].push(7)
    {users => "Jessica"}

    users["Jessica"] = {:github => "jsimon727", :favorite_numbers => [3, 7, 2]}

    users["Peter"][:favorite_numbers]

    users["Jeff"][:favorite_numbers].min
    

    users["PJ"][:favorite_numbers].select {|number| number.even? }

    users["Peter"][:favorite_numbers] & users["Jeff"][:favorite_numbers] & users["PJ"][:favorite_numbers]

   all _num = users.each do |name, value|
                    all_num << value[:favorite_numbers]
                    end

  all_num.each 

  (users["Peter"][:favorite_numbers] | users["Jeff"][:favorite_numbers] | users["PJ"][:favorite_numbers]).sort

twelve = users["Peter"][:favorite_numbers]

twelve[0].to_s
   

# 1. How would you access Jeff's Github handle (i.e. the string "jkonowitch")?
# 2. How would you add the number 7 to PJ's favorite numbers?
# 3. How would you add yourself to the users hash?
# 4. How would you return the array of Peter's favorite numbers?
# 5. How would you return the smallest of Jeff's favorite numbers?
6. How would you return an array of PJ's favorite numbers that are also even?
7. How would you return an array of the favorite numbers common to all users?
8. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
9. How would you change Peter's favorite number 12 into the string "12"?