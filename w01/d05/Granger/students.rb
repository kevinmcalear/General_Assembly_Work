students = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]


def j_names(students)
  j_names = students.select {|name| name[0,1] == "J"}
  j_names.join("|")
end

puts "Random:  #{students.sample}"
puts "Number of students: #{students.size}"
puts "Sandy's index: #{students.index("Sandy Yu")}"
puts "5th: #{students[4]}"
puts "All students #{students.join("|")}"
puts "All J's #{j_names(students)}"