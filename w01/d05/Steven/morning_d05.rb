student_names = ["Cory Haber","Dmitry Jum","Drew Tunney","Etan Berkowitz","Granger Abuhoff","Ilias Tsangaris","Isaac Torres","Jenn Dodd","Jennifer Gapay","Jessica Simon","John Hinrichs","Julia Lovett","Kevin McAlear","Kirsten Doyne","Marco Pretell-Vazquez","Michael Wagner","Nicholas Bundy","Pierre Gergis","Quincy Iheme","Rory Budnick","Sahil Trikha","Sandy Yu","Shawn Broukhim","Steven Weiss","Tahira Adaya","Zach Brady","Zack Stayman"]

student_names.sample

student_names.length

student_names.index("Sandy Yu")

student_names[4]

student_names.join("|")


student_names.select{|name| name[0].include? "J"}
#or could do
J_names = student_names.select do |student|
  student if student_names[0] == "J"
end



#(or could use this)
# student_names.map do |student|
#   student if student_names.split(" ")[0] == "J"
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

users["Jeff"][:github]

users["Peter"][:favorite_numbers].push 7
#can assign all this to a variable, then just add the var to the array
users["Steve"] = {:github => "stevenaweiss", :favorite_numbers => [3,4,7]}

users["Peter"][:favorite_numbers]

#alt method for finding minimum number
jeff_sorted_numbers = users["Jeff"][:favorite_numbers].sort
puts jeff_sorted_numbers[0]#or could do .first

users["Jeff"][:favorite_numbers].min

users["PJ"][:favorite_numbers].select{|number| number.even?}

#finds common favorite numbers
users["Peter"][:favorite_numbers] & users["Peter"][:favorite_numbers] & users["Jeff"][:favorite_numbers]

#combines all the favorite numbers excluding duplicates
(users["Peter"][:favorite_numbers] | users["Peter"][:favorite_numbers] | users["Jeff"][:favorite_numbers]).sort

#change peters favorite number 12 to the string 12
users["Peter"][:favorite_numbers][0] = users["Peter"][:favorite_numbers][0].to_s


#define a class with these attributes, so you can change 3 things
# Song
#   title
#   artist
#   genre

ac_dc.title=("Back in Black")

class Song
  def title=(title)
    @title = (title)
  end
  def artist=(artist)
    @artist = artist
  end
  def genre=(genre)
    @genre = (genre)
  end
  def title
    return @title
  end
  def artist
    return @artist
  def genre
    return @genre
  end
  def play
    return "#{title} by #{artist} is playing"
  end
end

song_1 = song.new







