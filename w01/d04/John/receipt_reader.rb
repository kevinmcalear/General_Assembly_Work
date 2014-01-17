f = File.open("receipt.txt", "r")
text = f.read

text_array = text.split("\n")
text_array.select { |line| line.length > 0}
text_array.select { |line| line.length > 0}.select{|l| l.include?"$"}
text_array.select { |l| l.include?"$"}
text_array.reject { |l| l.include?"$"}
text_array.reject { |l| l.include?"$"}.join
text_array.reject { |l| l.include?"$"}.join("\n")


f.close

