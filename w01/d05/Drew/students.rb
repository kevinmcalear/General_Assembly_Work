names = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

puts names.sample 
puts names.count 
#could have used .length or .size as well
puts names.index("Sandy Yu")
puts names[4]
puts names.join("| ")

# students.select do |students|
#   students[0] == "J"
# end


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
# all users also have a hash. their keys are github and favorite_numbers
# 
    puts users["Jeff"][:github]
    puts users["PJ"][:favorite_numbers].push(7)
    # could also do << 7

    drew = {:github => "tunneylax20", :favorite_numbers => [2, 20, 22]}
    users["Drew"] = drew
    puts users["Peter"][:favorite_numbers]
    puts users["Jeff"][:favorite_numbers].min 
    users["PJ"][:favorite_numbers].select do |number| 
      number.even?
    end

    #takes intersection (same numbers) of all and puts them into an arry 
    users["Peter"][:favorite_numbers] & ["Jeff"][:favorite_numbers] & ["PJ"][:favorite_numbers]
    #takes unique values of all and puts them into an array 
    users(["Peter"][:favorite_numbers] | ["Jeff"][:favorite_numbers] | ["PJ"][:favorite_numbers]).sort

    users["Peter"][:favorite_numbers][0] = users["Peter"][:favorite_numbers][0].to_s

     
  










