# PART ONE

classmates = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

puts classmates.sample

puts classmates.count

puts classmates.index("Sandy Yu")

puts classmates[4]

puts classmates.join(" | ")

puts classmates.select {|student| student.include? "J"}


# PART TWO

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

    users["PJ"][:favorite_numbers].push(7) 

    puts users["PJ"][:favorite_numbers] 

    users["Kevin"] = {
        :github => "kevinmcalear",
        :favorite_numbers => [18, 23],
      }

    puts users

    puts users["Peter"][:favorite_numbers]

    puts users["Jeff"][:favorite_numbers].min

    puts users["PJ"][:favorite_numbers].select {| e | e.even? }

    puts users["Peter"][:favorite_numbers] & users["Jeff"][:favorite_numbers] & users["PJ"][:favorite_numbers]
    
    puts (users["Peter"][:favorite_numbers] | users["Jeff"][:favorite_numbers] | users["PJ"][:favorite_numbers]).sort

    puts users["Peter"][:favorite_numbers][0].to_s
   # users["PJ"].select  { |e| e.include? :favorite_numbers}

    
    # puts users.select {|e| e["Jeff"][:favorite_numbers].even? = e["Kevin"][:favorite_numbers].even? = e["Peter"][:favorite_numbers].even? == e["PJ"][:favorite_numbers].even?}
