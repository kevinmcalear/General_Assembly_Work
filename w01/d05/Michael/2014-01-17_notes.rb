###Finding Second World
# shawn = "Shawn Broukhim"
# shawn.split(" ")[1]

# ###Finding last letter of second Word
# shawn.split(" ")[1][-1]

##OBJECTS###

#Create a class#
# #NOTE:  Classes are CamelCased (vs. snake_cased)
# class Movie
# 	def title
# 		return "Sound of Music"
# 	end	
# end 

# # #Instantiate a new movie
# sound_of_music = Movie.new

# #Can this be called?  No-- can only be called on objects. 
# Movie.title

# #Create a class with a class method. 
# class Movie
# 	def self.hd?
# 		return true
# 	end	
# end 

# #Can sound_of_music be called with the new class method?  No because the object was instantiated prior to the class method being created. 
# sound_of_music.hd?

## Setter Versus Getter Methods
##To access data internal to the object must be accessed through getter methods. 

class Movie
	def title= (title)  #Setter Method
		@title = title
	end	
	def title
		return @title   #Getter Method
	end
	def self.hd?        #Class Method.  Defined on the Class Level. The intances will not have this data. 
	 	return true
 	end
 	def blah
 		return @@form_of_entertainment  #Class Method that gets applied to all instances based on their association with the class. 
 	end
end 

sound_of_music= Movie.new #Instantiates new class
sound_of_music.title = ("Sound of Music") #Sets the Title
puts sound_of_music.title #Gets the title

##Another instantiated object stores a different instance variable. 

rocky= Movie.new #Instantiates new class
rocky.title = ("Rocky") #Sets the Title
puts rocky.title #Gets the title

##Ruby will return nil for an unassigned instance variable. 
##Ruby will return an error for an unassigned local variable. 







