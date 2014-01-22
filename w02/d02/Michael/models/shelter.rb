class Shelter
  def initialize(name)
    @name = name
    @animals = []
    @clients = []
  end 
  def name
    return @name
  end
  def animals
    @animals
  end 
  def clients
    @clients
  end

  def self.all_names
    ObjectSpace.each_object(self).map(&:name)
  end

  def create_animals_array(array)
    self.animals.push(array)
  end 
  def create_clients_array(array)
    self.clients.push(array)
  end
end 


##TEST###
# happitails = Shelter.new("Happitails")
# happitails.create_animals_array(["Rover"])
# happitails.create_clients_array(["Tom"])
# puts happitails.name
# puts happitails.animals
# puts happitails.clients


