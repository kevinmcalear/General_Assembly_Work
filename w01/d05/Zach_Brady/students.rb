us = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

# puts us.sample
# puts us.length
# puts us.index("Sandy Yu")
# puts us[4]
# us.each { |student| print student + " | "} # OR: students.join(" | ")
# us.each { |student| 
#     if student[0] == "J"
#         puts student
#     end
# }
# OR
# us.select { |student| student[0] == "J" }

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

# users["Jeff"][:github]
# users["PJ"][:favorite_numbers].push(7)
brach = { :github => "zzzbra", "favorite_numbers" => [4, 9, 23, 26] }
users["Brach"] = brach
# users["Peter"][:favorite_numbers]
# users["Jeff"][:favorite_numbers].sort[0] # OR users["Jeff"][:favorite_numbers].min
# users["PJ"][:favorite_numbers].select { |number| 
#     number.even?
# }
# puts users["PJ"][:favorite_numbers] & users["Peter"][:favorite_numbers] & users["Jeff"][:favorite_numbers]
# users["PJ"][:favorite_numbers] | users["Peter"][:favorite_numbers] | users["Jeff"][:favorite_numbers].sort

# users["Peter"][:favorite_numbers][0] = users["Peter"][:favorite_numbers][0].to_s
