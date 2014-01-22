class Animal
  def initialize(name, species)
    @name = name
    @species = species
    @toys = []
    @owner = []
  end

  def name
    return @name
  end

  def species
    return @species
  end

  def add_toy
    puts "What toy would you like to add?"
    toy = gets.chomp
    self.toys().push(toy)
  end

  def assign_to_owner
    puts "What is the owner's name?"
    name = gets.chomp
    puts "What is the owner's age?"
    age = gets.chomp.to_i
    owner = Client.new(name, age)
    self.owner << (owner)
  end

  # def to_s
  #   puts "#{name} is a #{species}"
  # end


end

# lil_dog = Animal.new("frank","Bulldog")
# puts lil_dog


