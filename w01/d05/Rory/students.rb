###### STUDENTS ##########

students = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

#### 1 ######
rand(students.count) = x

puts "A random student is #{students[x]}."

#or just students.sample

##### 2 ######

puts "The number of students is #{students.count}."

##### 3 #######

puts students.index("Sandy Yu")

###### 4 #######

puts students[4]

###### 5 #######

puts students.join("|")

####### 6 #######

 first_last = students.map{|name|name.split(" ")}
 first_only = first_last.select{|name|name[0][0] == "J"}
 j_names = first_only.map{|name|name.join(",")}
 final_j_names = j_names.map{|jname|jname.gsub(",", " ")}

 #j_names = students.select do |student|
 #student[0] == "J"
 #end

 ######### ARRAYS & HASHES #############

 ###### 1 ###########
 users ["Jeff"][:github]
 ####### 2 ##########
 users["PJ"][:favorite_numbers].push(7)
 ######## 3 #########
 hash_2 = {"Rory" => {:github => "rory2988", :favorite_numbers => [2, 8, 13]}}
 users.merge!(hash_2)

 #or rory = {:github => "rory2988", :favorite_numbers => [2, 8, 13]}
 #users["Rory"] = rory
######## 4 ##########
users["Peter"][:favorite_numbers]
######## 5 ##########
total = users["Jeff"][:favorite_numbers].sort
puts total[0]
######### 6 ########
users["PJ"][:favorite_numbers].select{|num|num.even?}
######### 7 ########

users["Peter"][:favorite_numbers] & users["Jeff"][:favorite_numbers] & users["PJ"][:favorite_numbers]

#or all_nums = []
#users.each do |name, value|
#all_nums << value[:favorite_numbers]


######### 8 #########

all_nums = users["Peter"][:favorite_numbers] + users["Jeff"][:favorite_numbers] + users["PJ"][:favorite_numbers]
all_nums.compact.sort

# or
#nums = users["Peter"][:favorite_numbers] | users["Jeff"][:favorite_numbers] | users["PJ"][:favorite_numbers]
#nums.sort
########## 9 ##########

users["Peter"][:favorite_numbers][0] = users["Peter"[:favorite_numbers][0].to_s
