def create_animal(shelter)
  animal_hash = Hash.new
  puts "What is the animal's name?"
  name = gets.chomp
  animal_hash[:name] = name

  puts "What is the animal's species"
  species = gets.chomp
  animal_hash[:species] = species

  puts "Does #{name} have any toys?  Enter the toys separated by commas."
  toys = gets.chomp
  animal_hash[:toy] = toys.split(",")

  animal = Animal.new(name, species)
  shelter.create_animals_array(animal_hash)
end

def create_client(shelter)
  person_hash = Hash.new
  puts "What is the person's name"
  name = gets.chomp
  person_hash[:name] = name

  puts "What is the person's age (Please enter a number)"
  age = gets.chomp
  person_hash[:age] = age
  person_hash[:animals] = []
  shelter.create_clients_array(person_hash)
end 

def display(shelter,type)
  if type == "animals"
    shelter.animals.each {|name| puts name[:name]}       
  else type == "clients"
    shelter.clients.each {|client| puts client[:name]}
  end 
end

def adopt_animal(shelter)
  display(shelter,"clients")
  puts "Which client would like to adopt?"
  client_to_adopt = gets.chomp

  #Step 1:  Determine client based on name: 
  client_hash_to_modify = shelter.clients.select {|hash| hash[:name].include? client_to_adopt}
  #Step 2:  Identify the index for the client
  client_index = shelter.clients.index(client_hash_to_modify[0])

  if shelter.clients[client_index][:animals].nil?
    puts "You are a crazy cat lady.  No more cats!"
  elsif shelter.clients[client_index][:animals].length >= 2
    puts "***************" 
    puts "You already have 2 animals.  Leave some for the others!"
    puts "***************"
  else 
    display(shelter,"animals")
    puts "Which animal would you like to adopt?"
    animal_to_adopt = gets.chomp
    
    #Step 3:  Create an array of animals
    animal_hash_to_modify = shelter.animals.select {|hash| hash[:name].include? animal_to_adopt}
    #Step 4:  Remove the animal from list of shelter animals
    shelter.animals.delete(animal_hash_to_modify[0])
    #Step 5:  Add the Animal for the Client
    shelter.clients[client_index.to_i][:animals].push(animal_hash_to_modify[0])
    puts "***************" 
    puts "Congrats on adopting a #{animal_hash_to_modify[0][:species]} named #{animal_hash_to_modify[0][:name]}"
    puts "***************"
  end 
end

def provide_animal(shelter)
  #Provide a list of all clients and their pets. 
  #Put an existing pet up for adoption or put a new pet up for adoption. 
  puts "***************"
  puts ""
  puts "Putting a Pet up for Adoption" 
  display(shelter,"clients")
  puts "Please select yourself"
  client = gets.chomp
  puts ""
  puts "***************"
  
  #Step 1:  Determine client based on name: 
  client_hash_to_modify = shelter.clients.select {|hash| hash[:name].include? client}
  #Step 2:  Identify the index for the client
  client_index = shelter.clients.index(client_hash_to_modify[0])
  
  puts "If the animal you are putting up for adoption came from the #{shelter.name} shelter, please select it below.  Otherwise enter 'New Animal' and enter fill out the form"
  # binding.pry
  shelter.clients[client_index.to_i][:animals].each {|animals| puts animals[:name]}
  animal_to_adopt = gets.chomp

  
  
  if animal_to_adopt == "New Animal"
    create_animal(shelter)
  else 
  #Step 1:  Create an array of animals
  animal_hash_to_modify = shelter.clients[client_index.to_i][:animals].select {|hash| hash[:name].include? animal_to_adopt}
  #Step 2:  Remove the animal from list of animals for client
  shelter.animals.delete(animal_hash_to_modify[0])
  #Step 3:  Add the Animal to the list of shelter animals
  shelter.animals.push(animal_hash_to_modify[0])
  end 
end
