students = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

#RANDO STUDENT

puts "--------------------------------VVVVVVVV RANDO STUDENT"

puts students.sample
puts students.sample
puts students.sample
puts students.sample
puts students.sample
puts students.sample

#STUDENT COUNT

puts "--------------------------------VVVVVVVV STUDENT COUNT"

puts students.count

#STUDENT SANDY 

puts "--------------------------------VVVVVVVV SANDY"

puts students.index("Sandy Yu")

#STUDENT 5

puts "--------------------------------VVVVVVVV 5TH STUDENT"

puts students[4]

#STUDENTS PIPE

puts "--------------------------------VVVVVVVV THIS IS NOT A STUDENT"

all_together_now = students.join(" | ")

puts all_together_now

#JUST J

#STUDENTS PIPE

puts "--------------------------------VVVVVVVV THE Js HAVE IT"

just_j = students.select {|name| name[0, 1] == "J"}

puts just_j

puts
puts "--------------------HASH---------------------------"
puts

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

#JEFF GITHUB

puts "--------------------------------VVVVVVVV JEFFs GITHUB"

puts users["Jeff"][:github]


#PJ LOVES NUMBERS

puts "--------------------------------VVVVVVVV PJ NEW NUMBER"

users["PJ"][:favorite_numbers].push(7)

puts users["PJ"][:favorite_numbers]

#ADD ME

puts "--------------------------------VVVVVVVV ADD ME"

users["Jenn"] = {:github => "jenndodd", :favorite_numbers => [8, 15, 342]}

puts users

#PETERS FAVE NUMBERS

puts "--------------------------------VVVVVVVV PETER'S FAVE NUMBERS"


puts users["Peter"][:favorite_numbers]

#JEFF'S SMALLEST NUMBER

puts "--------------------------------VVVVVVVV JEFFS SMALLEST NUMBER"

puts users["Jeff"][:favorite_numbers].min


#PJs EVEN

puts "--------------------------------VVVVVVVV PJS EVEN NUMBER"

pj_even = users["PJ"][:favorite_numbers].select {|num| num.even? }

puts pj_even
puts "--------------------------------VVVVVVVVV  PJS NUMBERS TO TEST EVEN"
puts users["PJ"][:favorite_numbers]

#COMMON FAVE NUMBERS

common_faves = users["Peter"][:favorite_numbers] & users["PJ"][:favorite_numbers] & users["Jeff"][:favorite_numbers]

puts "--------------------------------VVVVVVVVV  COMMON FAVE NUM"

puts common_faves

#ALL FAVES, SORTED, NO DUPES

puts "--------------------------------VVVVVVVVV  ALL FAVE NUM"

all_faves = (users["Peter"][:favorite_numbers] | users["PJ"][:favorite_numbers] | users["Jeff"][:favorite_numbers]).sort

puts all_faves


#CHANGE PETERS NUMBER TO STRING

users["Peter"][:favorite_numbers][0] = users["Peter"][:favorite_numbers][0].to_s

puts "--------------------------------VVVVVVVVV  ALL FAVE NUM"

puts users["Peter"][:favorite_numbers]







