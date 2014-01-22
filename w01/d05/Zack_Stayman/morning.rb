names = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

puts names.sample

i = 0
number_of_people = names.each do |person|
  i += 1
end

puts i

puts names.index("Sandy Yu")

puts names[4]


puts names.join("|")

j_people = names.select do |person|
  person[0] == "J"
end

puts j_people

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

puts "\n"
    
puts users["Jeff"][:github]

users["PJ"][:favorite_numbers].push(7)

puts users["PJ"][:favorite_numbers]

users["Zack"] = {
        :github => "zstayman",
        :favorite_numbers => [7, 31, 12],
      }

puts users

puts users["Peter"][:favorite_numbers]


users["Jeff"][:favorite_numbers].min
puts "\n"

pj_even = users["PJ"][:favorite_numbers].select do |number|
  number.even?
end
puts pj_even

# numbers=users.each_entry do |person|
#   person[:favorite_numbers]
# end

users["PJ"][:favorite_numbers]

users["PJ"]

