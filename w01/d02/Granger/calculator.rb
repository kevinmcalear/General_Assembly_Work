off = false


# while !off
#   print "Enter your first number: "
#   print "Enter your operation (+,-,/,*,^,sqr,  "
#   print "Enter your second number: "

#   puts "Turn off (N)? "
#    if gets.chomp == "N" 
#     || gets.chomp == "(N)"
#     || gets.chomp == "n" 
#     || gets.chomp.downcase == "no"
#     off = true
# end

def add(first, second) 
  first + second
end

def subtract(first, second)
  first - second
end

def multiply(first, second)
  first*second
end

def divide(first, second)
  first/second
end

def exponent(first, second)
  first^second
end

def square root(first)
  Math.sqrt(first)
end
