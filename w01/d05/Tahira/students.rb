students = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

puts students.sample
puts students.length
puts students.index("Sandy Yu")
puts students[5]
students.each do |s|
  print "#{s}|"
end
# puts students.join("|")
puts students.select{ |s| s[0] == "J"}


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

 puts users["Jeff"][:github]   
 puts users["PJ"][:favorite_numbers].push(7)
 users["Tahira"] = {:favorite_numbers => [0, 1], :github => "tadaya"}
 puts users.keys
 puts users["Tahira"]
 puts "Peter's favorite numbers"
 puts users["Peter"][:favorite_numbers]
 puts "Jeff's minimum favorite"
 puts users["Jeff"][:favorite_numbers].min
 puts "PJ's favorite even numbers"
 puts users["PJ"][:favorite_numbers].select{ |f| f.even?}
 puts "Union of numbers"
puts users["PJ"][:favorite_numbers] & users["Peter"][:favorite_numbers] & users["Jeff"][:favorite_numbers]

## common = users.each {|hash,key| common & hash[key][:favorite_numbers]}
puts "Intersection"
puts (users["PJ"][:favorite_numbers] | users["Peter"][:favorite_numbers] | users["Jeff"][:favorite_numbers]).uniq.sort
puts "New favorite numbers"
 users["Peter"][:favorite_numbers][0] = "12"
 puts users["Peter"][:favorite_numbers]