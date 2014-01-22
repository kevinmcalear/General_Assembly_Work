 fur = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

  puts fur.sample
  puts fur.count
  puts fur.index("Sandy Yu")
  puts fur[4]
  puts fur.join (" | ")
  puts fur.select {|x| x.include? "J"}

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
    users["Jeff"][:github]
    users["PJ"][:favorite_numbers] = [8, 12, 14, 7]
    users["Jeff"][:favorite_numbers].select do |number| 
      number.even?
    end
    users["Peter"][:favorite_numbers] & users["Jeff"][:favorite_numbers] & users["PJ"][:favorite_numbers]
(users["Peter"][:favorite_numbers] | users["Jeff"][:favorite_numbers] | users["PJ"][:favorite_numbers]).sort