student_names = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

puts student_names.sample
puts student_names.length
puts student_names.index("Sandy Yu")
puts student_names[4]
puts student_names.join("|")
j_names = student_names.select do |name| 
  name if name[0] == "J"
end
puts j_names

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

nicholas = {:github => "NicholasJay", :favorite_numbers => [23, 7, 4]}
users["Nicholas"] = nicholas
puts users

puts users["Peter"][:favorite_numbers]

puts users["Jeff"][:favorite_numbers].min

users["PJ"][:favorite_numbers].each do |nums| 
  if nums.even?
    puts nums
  end
end

#  allnums = []
#  users.each {|name, value| allnums << value[:favorite_numbers] }
# allnums.each 

# the pipe | will exclude any duplicates between arrays
# [:array] | [:array]

users["Peter"][:favorite_numbers][0] = users["Peter"][:favorite_numbers][0].to_s




