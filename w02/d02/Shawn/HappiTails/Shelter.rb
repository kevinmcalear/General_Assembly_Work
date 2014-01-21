#HappiTails Animal Shelter
#Shelter Object Definition

# require_relative 'Client.rb'
# require_relative 'Animal.rb'
# require_relative 'happitails'

class Shelter

  def initialize(name)
    @name = name
    @animals = []
    @clients = []
    # @remove_client = remove_client
  end

  def name
    return @name
  end

  def animals
    return @animals
  end

  def clients
    return @clients
  end

  def facilitate_adoption
    puts "What's the new client name?"
    new_client_name = gets.chomp
    puts "What's the new client's age?"
    new_client_age = gets.chomp
    new_client = Client.new(new_client_name, new_client_age)
    self.clients.push(new_client)
  end

  def remove_client
      puts "Which client would you like to remove from the adopter's list?"
      name_to_remove = gets.chomp
      self.clients.delete(name_to_remove)
  end

  end

