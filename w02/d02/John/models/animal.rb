class Animal
  def initialize(name, species)
    #initialize name, species
    @name = name
    @species = species

    #initialize empty toys array
    @toys = []
  end

  def name
    return @name
  end

  def species
    return @species
  end

  def toys
    return @toys
  end

  def animal_info
    return "Name: #{self.name} | Species: #{self.species} | Toys: #{self.toys.join(", ")}"
  end

  def add_toys
    answer = "yes"
    while answer == "yes"
      puts "Any toys to add? (yes or no)"
      answer = gets.chomp

      if answer == "yes"
        puts "What is the toy?"
        self.toys << gets.chomp
      end
    end
  end

end