stu_list = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

puts stu_list.sample

puts stu_list.length

puts stu_list.index("Sandy Yu")

puts stu_list[4]

print stu_list.join("|")
puts

puts stu_list.select { |name| 
  name[0] == "J"
}


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


#1. How would you access Jeff's Github handle (i.e. the string "jkonowitch")?

puts users["Jeff"][:github]

# 2. How would you add the number 7 to PJ's favorite numbers?

users["PJ"][:favorite_numbers].push(7)
    # users["PJ"][:favorite_numbers] = [8, 12, 24, 7]
    puts users

# 3. How would you add yourself to the users hash?


marco = {:github => "mpvazquez", :favorite_numbers => [7, 12] }
users["Marco"] = marco
puts users

#EXAMPLE OF ADDING MORE THAN ONE PERSON TO THE HASH

# john = {:github => "john", :favorite_numbers => [6, 16] }
# ilias = {:github => "ilias", :favorite_numbers => [4, 165] }

# new_students = [john, ilias]

# ?????? users["John", "Ilias"] = new_students

# 4. How would you return the array of Peter's favorite numbers?

puts users["Peter"][:favorite_numbers]
puts

# 5. How would you return the smallest of Jeff's favorite numbers?

puts users["Jeff"][:favorite_numbers].min
puts

# alternative
# jeff_sorted_numbers = users["Jeff"][:favorite_numbers].sort
# puts jeff_sorted_numbers[0]

# 6. How would you return an array of PJ's favorite numbers that are also even?

puts users["PJ"][:favorite_numbers].select {|number| number.even?}
puts




# 7. How would you return an array of the favorite numbers common to all users?

# all_nums = []

# users.each do |name, value|
#   all_nums << value[:favorite_numbers]
# end

# puts all_nums.flatten
# puts all_nums.unique

peter_favs = users["Peter"][:favorite_numbers]
jeff_favs = users["Jeff"][:favorite_numbers]
pj_favs = users["PJ"][:favorite_numbers]

# the & (intersection function) looks for the common number in all the arrays

all_faves = peter_favs & jeff_favs & pj_favs 

# 8. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?

puts all_faves.uniq

# 9. How would you change Peter's favorite number 12 into the string "12"?

users["Peter"][:favorite_numbers][0] = users["Peter"][:favorite_numbers][0].to_s
puts users
