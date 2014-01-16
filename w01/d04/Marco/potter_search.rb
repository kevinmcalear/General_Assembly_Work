accessor = File.open("potter.csv", "r")

  potter_reader = accessor.read.to_s

  characters = potter_reader.split("\n").to_s

  puts characters


















accessor.close