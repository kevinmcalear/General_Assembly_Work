#Morning Exercise

### Students
- Create a file called students.rb
- Here is an array containing all your names
```
["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]
```
- Write a program that:
  - Prints the name of one random student
  - Prints the number of students in the class
  - Prints the index of "Sandy Yu"
  - Prints the fifth person (In this case it's Granger)
  - Prints a list of all the student names on one line, with each name separated by a pipe: |
  - Prints all of the students with J names (Jenn, Jennifer, Jessica, John and Julia)

### Arrays & Hashes
**Given the following data structure:**

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

1. How would you access Jeff's Github handle (i.e. the string "jkonowitch")? 
users["Jeff"][:github]

2. How would you add the number 7 to PJ's favorite numbers?
users["PJ"][:favorite_numbers] << 7

3. How would you add yourself to the users hash?
users["Granger"] = {github: "Cranbury", favorite_numbers: [4]}

4. How would you return the array of Peter's favorite numbers?
users["Peter"][:favorite_numbers]

5. How would you return the smallest of Jeff's favorite numbers?
users["Jeff"][:favorite_numbers].min

6. How would you return an array of PJ's favorite numbers that are also even?
users["PJ"][:favorite_numbers].select {|num| num.even?}

7. How would you return an array of the favorite numbers common to all users?
users.reduce(users["Peter"][:favorite_numbers]) {|numbers, user| numbers & user[1][:favorite_numbers]}

users.reduce(users.to_a.sample[1][:favorite_numbers]) {|numbers, user| numbers & user[1][:favorite_numbers]}


8. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
users.reduce([]) {|numbers, user| numbers += user[1][:favorite_numbers]}).sort.uniq

9. How would you change Peter's favorite number 12 into the string "12"?
users["Peter"][:favorite_numbers][users["Peter"][:favorite_numbers].index(12)] = "12"
