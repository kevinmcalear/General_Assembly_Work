def twisted_fizzbuzz(num)
	while (num>2)
		if (num % 3 == 0 && (num % 5 != 0))
			puts num
		elsif (num % 5 == 0 && (num % 3 != 0))
			puts num
		end
		num -= 1
	end
end