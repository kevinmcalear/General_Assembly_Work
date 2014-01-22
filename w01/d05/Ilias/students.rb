# students = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

#Random Student
puts students.sample

#Counting students
puts students.size

#Index number of Sandy
puts students.index("Sandy Yu")

#5th student
puts students[4]

#Concatinating string with pipe
puts students.join("|")

#Map first and last names
first_and_last_names = students.map{ |string| string.split(" ")}

#Select all names that begin with J
# j_names = first_and_last_names.select do |name|
#   name[0][0] == "J"
# end

j_names = students.select{ |string| string[0] == "J"}

#Print names in one string
puts j_names


##PART 2##

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

#Access Jeff's github name
puts users["Jeff"][:github]

#Add 7 to PJ's favorite numbers
users["PJ"][:favorite_numbers] << 7
puts users["PJ"][:favorite_numbers]

#Add myself to users
users["Ilias"] = {
  :github => "iliastsangaris",
  :favorite_numbers => [1,2,3]
}

#Jeff's favorite numbers
puts users["Jeff"][:favorite_numbers]

#Jeff's smallest number
puts users["Jeff"][:favorite_numbers].min

#PJ Even numbers
puts users["PJ"][:favorite_numbers].select{ |num| num.even?}

#Common fav numbers
puts users["Jeff"][:favorite_numbers] & users["PJ"][:favorite_numbers] & users["Peter"][:favorite_numbers]

#Unique fav numbers
unique_nums = users["Jeff"][:favorite_numbers] | users["PJ"][:favorite_numbers] | users["Peter"][:favorite_numbers]
puts unique_nums.sort

puts users["Jeff"][:favorite_numbers].fetch(12)

