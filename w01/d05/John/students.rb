students = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

puts students.sample
puts students.count
puts students.index("Sandy Yu")
puts students[4]
puts students.join("|")
puts students.select {|e| e[0] == 'J'}


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
      }
    }

#Jeff's github
puts users["Jeff"][:github]

#push 7 to PJ's favorite_numbers
puts users["PJ"][:favorite_numbers] << 7

#add myself to users hash
users["John"] = {:github => "jmhinric", :favorite_numbers => [1, 2, 3, 12]}
puts users

#return array of P's favorite_numbers
puts users["Peter"][:favorite_numbers]
puts

#smallest of jeff's favorite_numbers

puts users["Jeff"][:favorite_numbers].min
puts

#array PJ's nums even

puts users["PJ"][:favorite_numbers].select {|e| e.even?}
puts

#fav nums of all users

a = []
a << users["Peter"][:favorite_numbers]
a << users["PJ"][:favorite_numbers]
a << users["Jeff"][:favorite_numbers]
puts a[0] & a[1] & a[2]



#all users fav nums sorted, excluding duplicates

# puts users.to_a.map { |a,b| a[:favorite_numbers]}
# puts users.each {|a,b| c << b[:favorite_numbers]}

a = []
a << users["Peter"][:favorite_numbers]
a << users["PJ"][:favorite_numbers]
a << users["Jeff"][:favorite_numbers]

puts
puts (a[0] | a[1] | a[2]).sort


# change Peter's 12 to "12"

puts
puts (users["Peter"][:favorite_numbers][0] = "12").class
