class Client
  def initialize(client_name, age)
    @client_name = client_name
    @age = age
    @pets = []
  end

#getter methods for client_name, age, pets
def client_name
  return @client_name
end

def age
  return @age
end

def pets
  return @pets
end

def to_s
  return "Name: #{client_name}, Age: #{age}, Pets: #{pets.join(",")}"
end
end