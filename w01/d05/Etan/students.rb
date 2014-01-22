# students = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

# print students.sample

# print students.size

# print students.index("Sandy Yu")

# print students[4]

#print students.join("|")

#j_students = students.select {|x| x.start_with?("J")}

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



numbers = users["Peter"][:favorite_numbers] + users["PJ"][:favorite_numbers] + users["Jeff"][:favorite_numbers]

















#print users["Jeff"][:github]

#users["PJ"][:favorite_numbers] << [7]

=begin
etan = {
	"Etan" => {
		:github => "etan",
		:favorite_numbers => [1, 2, 3]
	}
}

users.merge(etan)

OR 

users["Etan"] = {:github => "etanb", :favorite_numbers => [1, 2, 3]}

=end

#users["Peter"][:favorite_numbers]

=begin
peter_numbers = users["Peter"][:favorite_numbers]

peter_evens = peter_numbers.select {|x| x.even?}

print peter_evens
=end

=begin
numbers = users["Peter"][:favorite_numbers] + users["PJ"][:favorite_numbers] + users["Jeff"][:favorite_numbers]
common_numbers = numbers.detect {|x| numbers.count(x) > 1}
print common_numbers
=end

# print numbers.uniq.sort

# users["Peter"][:favorite_numbers][0].to_s
