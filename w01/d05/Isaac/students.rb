students = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

puts "Random student: " + students.sample.to_s

puts "Total number of students: " + students.count.to_s

puts students.index("Sandy Yu").to_s + "is the index of Sandy Yu"

puts students[4].to_s + "is the fifth person"

# Prints a list of all the student names on one line, with each name separated by a pipe: |

print students.join(" | ")

# Prints all of the students with J names (Jenn, Jennifer, Jessica, John and Julia). SELECT

j_names = students.select do |student|
  student[0] == "J"
end

puts j_names


# **Given the following data structure:**

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

# 1. How would you access Jeff's Github handle (i.e. the string "jkonowitch")?

users["Jeff"][:github]

# 2. How would you add the number 7 to PJ's favorite numbers?

users["PJ"][:favorite_numbers].push 7

# 3. How would you add yourself to the users hash?

users["Isaac"] = {
        :github => "itorres1",
        :favorite_numbers => [23, 7, 9],
      }

# 4. How would you return the array of Peter's favorite numbers?

users["Peter"][:favorite_numbers]

# 5. How would you return the smallest of Jeff's favorite numbers?

users["Jeff"][:favorite_numbers].min


# 6. How would you return an array of PJ's favorite numbers that are also even?

users["PJ"][:favorite_numbers].find_all { |num| num % 2 == 0 }

users["PJ"][:favorite_numbers].select { |num| num.even? }

# 7. How would you return an array of the favorite numbers common to all users?

users["PJ"][:favorite_numbers] & users["Jeff"][:favorite_numbers] & users["Peter"][:favorite_numbers]

all_nums = []

users.each do |name, value|
  all_nums << value[:favorite_numbers]
end

# array intersect. use & ampersand


# 8. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?

# you can use the pipe operator here, union

puts users["PJ"][:favorite_numbers] | users["Jeff"][:favorite_numbers] | users["Peter"][:favorite_numbers]

# 9. How would you change Peter's favorite number 12 into the string "12"?

puts users["Peter"][:favorite_numbers][0].to_s





















