class Songs

	attr_accessor :title, :artist, :genre

	def initialize(title, artist, genre)
		@title=title
		@artist=artist
		@genre=genre
	end


end


rage = Songs.new("Testify", "Rage Against the machine", "Rap Metal")