class Client 
  def initialize (name, age)
    @name = name
    @age = age
    @pets = []
  end

    def name
      return @name
    end

    def age
      return @age
    end

    def pets
      return @pets
    end
end

    # def add_client
    #   puts "What is the client's name?"
    #   name = gets.chomp
    #   put "How old is the client?"
    #   age = gets.chomp.to_i
    #   puts "Does the client have any pets?"
    #   put = gets.chomp
    #   client = Client.new(name,age,pets)
    #   self.client = client
    # end



# harry = Client.new("Harry", 17, 0)
# puts harry.name
# puts harry.age
# puts harry.pets