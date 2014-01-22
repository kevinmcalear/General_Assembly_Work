class Animal
  def initialize(name, species)
    @name = name
    @species = species
    @toys = Array.new
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

  def add_toy(toy)
    @toys.push(toy)
  end

  def print_toys
    puts "***#{self.name}'s Toys***"
     @toys.each do |toy|
      puts toy
    end
  end

end