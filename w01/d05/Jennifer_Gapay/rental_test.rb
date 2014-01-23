## MENU ##

# choice = nil
# while choice != "Q"

print "Welcome to our Fancy Schmancy Rental App"

puts "Please choose the following: (V)iew the Building Details, (A)dd an apartment to the Building, Add a (T)enant, (L)ist the apartment directory for the building, or (Q)uit"

response = gets.chomp

case response
  when "V"
    # v = gets.chomp.upcase
    puts "Building"
  when "A"
    # a = gets.chomp.upcase
    puts "Apartment"
  when "T" 
    # t = gets.chomp.upcase
    puts "Tenant"
  when "L"
    # l - gets.chomp.upcase
    puts "List"
  when "Q"
    puts "Bye!"
  end
end #end of while loop



# class People
#   def initialize (p_name)
# #name
# 	def p_name=(p_name)
# 		@p_name = p_name
# 	end

# 	def p_name
# 		return @p_name
# 	end
# #age
# 	def age=(age)
# 		@age = age
# 	end

# 	def age
# 		return @age
# 	end
# #gender
# 	def gender=(gender)
# 		@gender = gender
# 	end

# 	def gender
# 		return @gender
# 	end
# end

# ## Apartment class
  # def initialize()
  #   @tenants = [] #this is an array
  #   @apartments = []
  # end

#   def add_song(song)
#     self.songs().push(song)
#   end

#   def remove_song(song)
#     self.songs().delete(song)
#   end

#   def start
#     @current_song = self.songs().sample
#     puts @current_song.play()
#   end

#   def skip
#     self.start()
#   end

#   def current_song
#     return @current_song
#   end

#   def songs
#     return @songs
#   end
# end

# ## Building
# class Apartment
#   def initialize()
#     @songs = []
#   end

#   def add_song(song)
#     self.songs().push(song)
#   end

#   def remove_song(song)
#     self.songs().delete(song)
#   end

#   def start
#     @current_song = self.songs().sample
#     puts @current_song.play()
#   end

#   def skip
#     self.start()
#   end

#   def current_song
#     return @current_song
#   end

#   def songs
#     return @songs
#   end
# end

# #---------