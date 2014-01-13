# Building Ruby Familiarity

# In this exercise you will take a first look at some common commands in Ruby
# The idea here is to build familiary with Ruby syntax
# This will likely be the first time you've seen some of these commands
# Just type them in and see the displayed output

# Steps:
#   1. Open up a new terminal window
#   2. Launch pry
#   3. Paste a line of code into pry
#   4. Press return
#   5. Observe the displayed output
#   6. Repeat steps 3-5 for all lines below in order


first_ans = 7 / 2

puts first_ans

print first_ans

first_ans = 7 / 2.to_f

first_ans = 7.to_f / 2

first_ans = 7 / 2.0

first_ans = 7.0 / 2

first_ans = first_ans.round * 4



def get_character(full_string, index)
    return full_string[index]
end


message_string = "oicdlcwhejkeenoemrstuo"



character_1 = get_character(message_string, 4)

character_2 = get_character(message_string, 7)

character_3 = get_character(message_string, 2)



message_array = [character_1, character_2]

message_array.push(character_2)

message_array.pop()

message_array.push(character_3)



message_array

puts message_array

print message_array



value_float_1 = Math.sin(Math::PI / 2)

value_float_2 = Math.cos(Math::PI)



value_float_3 = (value_float_1 + value_float_2)

value_integer_1 = (value_float_1 + value_float_2).to_i



value_float_1 = value_float_1 * 4

value_float_2 *= 5

value_float_2 = value_float_2.abs

value_integer_1 += 8

value_float_4 = value_integer_1 * 3

value_float_3 -= 1



number_array = [value_float_1, value_float_2, value_float_3, value_float_4]

number_array.push(first_ans)

number_array.unshift(value_integer_1)

number_array.push(value_integer_1)

number_array.unshift( Math.sqrt(36) )

number_array.delete_at(5)



number_array.push( [19, 21, 6, 3, 1] )

number_array.flatten!


number_array.each { |current_index| puts get_character(message_string, current_index) }
