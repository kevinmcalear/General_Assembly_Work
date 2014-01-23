class Shelter
  def initialize(name)
    @name = name
    @animals = []
    @clients = []
  end

  def name
    @name
  end

  def animals
    @animals
  end

  def clients
    @clients
  end

  def add_animal(clients_animal)
    self.animals << clients_animal
  end

  def display_animals
    if @animals.size != 0 
      puts "We have these animals in the shelter now: "
      @animals.each {|i| puts "#{i.name} the #{i.species}\n\n"}
    else
      puts "Please add animal first\n\n"
    end
  end

  def display_clients
    if @clients.length > 0
        puts "Whe have these clients in our shelter database: "
        @clients.each do |i|
         if i.pets.size == 0
          puts "#{i.name} and he is #{i.age} old and he/doesn't have pets"
         else
          puts "#{i.name} and he is #{i.age} old and has #{i.pets.size}
          pets. They are: "
          i.pets.each {|a| puts "#{a.name} the #{a.species}"}
         end
        end
    else
      puts "Please add clients first \n\n"
    end
  end 
end
