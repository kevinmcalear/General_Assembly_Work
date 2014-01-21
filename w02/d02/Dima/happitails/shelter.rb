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

  def display_animals
    if @animals.size != 0
      puts "We have these animals in the shelter now: "
      @animals.each {|i| puts "#{i.name} the #{i.species}\n\n"}
    else
      puts "Please add animal first\n\n"
    end
  end

  def display_clients
    if @clients.size != 0
      puts "Whe have thses clients in our shelter database: "
      @clients.each {|i| puts "#{i.name} and he is #{i.age} old."}
    else
      puts "Please add clients first \n\n"
    end
  end 
end
