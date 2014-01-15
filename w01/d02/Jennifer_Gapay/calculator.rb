choice = nil
while choice != "q"

puts "Please choose the calculator you would like to use (b)basic, (a)dvanced, (q)uit"
choice = gets.chomp
case choice
when "b"
  puts "Please choose the following (a)dd, (s)ubtract, (t)imes, (d)ivide"
  basic = gets.chomp

case basic 
    when "a"
    	puts "Please enter your first number you want to add"
    	add1 = gets.chomp.to_i
    	puts "Pleaes enter your second number you want to add"
    	add2 = gets.chomp.to_i
    	puts "#{ add1 } + #{add2} = #{ add1 + add2 }"

    when "s"
    	puts "Please enter your first number"
    	sub1 = gets.chomp.to_i
    	puts "Please enter your second number"
    	sub2 = gets.chomp.to_i
    	puts "#{ sub1 } - #{ sub2 } = #{ sub1 - sub2 }"

    when "t"
    	puts "Pleae enter your first number"
    	time1 = gets.chomp.to_i
    	puts "Please enter your second number"
    	time2 = gets.chomp.to_i
    	puts "#{ time1 } * #{ time2 } = #{ time1 * time2 }"

    when "d"
    	puts "Please enter your first number"
    	div1 = gets.chomp.to_i
    	puts "Pleae enter your second number"
    	div2 = gets.chomp.to_i
    	puts "#{ div1 } / #{ div2 } = #{ div1 / div2 }"
end

when "a"
	puts "Please choose the following (e)xponent or (sq)uare root"
	advanced = gets.chomp

case advanced
	when "e"
		puts "Please enter your first number"
		exp1 = gets.chomp.to_i
		puts "Pleae enter your second number"
		exp2 = gets.chomp.to_i
		puts "#{exp1} ** #{exp2} = #{exp1 ** exp2}"	

	when "sq"
		puts "Please the number you would like to square root?"
		a = gets.chomp.to_i
		ans = Math.sqrt(a)
		puts "The square root of #{a} is #{ans.to_i}"
	end
end
end