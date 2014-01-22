# OPEN POTTER.CSV AND LOAD EVERY LINE OF CSV FILE AS ELEMENTS INTO ARRAY

f = File.open("potter.csv", "r") 

array_of_characters = []
f.each_line {|line|
    array_of_characters.push line
}

f.close

# BREAK EACH ELEMENT INTO SMALLER ARRAY AT EVERY COMMA

array_of_characters.each 

# CONVERT EACH ELEMENT IN ARRAY TO A SYMBOL