names = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

puts names.sample

puts names.count

puts names.index("Sandy Yu")

puts names[4]

names.join("|")

names.select do |x| 
  x.start_with?("J") 
end

names.select do |x|
  x[0] == "J"
end


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

users["PJ"][:favorite_numbers].push(7)

# or 
# users["PJ"][:favorite_numbers] << (7)

users["Kirsten"] = {:github => "kdoyne" , :favorite_numbers => [3, 5, 7]}

users["Peter"][:favorite_numbers]


users["Jeff"][:favorite_numbers].min

# or
jeff_sorted_numbers = users["Jeff"][:favorite_numbers].sort
users["Jeff"][:favorite_numbers][0]


users["PJ"][:favorite_numbers].select do |number|
  number % 2 == 0 
end

# or

users["PJ"][:favorite_numbers].select do |number|
  number.even?
end

numbers = users.map { |x| x[:favorite_numbers] }


users.each do |key|
  users[key][:favorite_numbers].each do |number|
    puts number
  end
end


users["Peter"][:favorite_numbers] & users["PJ"][:favorite_numbers] & users["Jeff"][:favorite_numbers]

all_nums = []
users.each do |name,value|
  all_nums << value[:favorite_numbers]
end
all_nums.flatten

all_numbers = users["Peter"][:favorite_numbers] | users["PJ"][:favorite_numbers] | users["Jeff"][:favorite_numbers]

users["Peter"][:favorite_numbers][0] = "12"


