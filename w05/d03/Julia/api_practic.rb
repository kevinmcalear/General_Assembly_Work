require 'httparty'
require 'json'
require 'pry'


#FourSquare Method to Find X Near X City

def foursquare_find(looking_for, city)
	#Required Credentials
	#Clinet ID
	client_id = "Q5YZQFOD1LC4THZJWFSWE5OGTHFCUCSU0VJMFETGEO5CHA3I"

	#Client Secret
	client_secret = "ZAZSQRL2OCKXFVK44TAEWSBCKPVW05ENN5Z5PWIZFM4UBLBC"

	search_url = "https://api.foursquare.com/v2/venues/search?client_id=#{client_id}&client_secret=#{client_secret}&v=20130815%20&near=#{city}&query=#{looking_for}&limit=1"
	from_foursquare = HTTParty.get(search_url)
	#binding.pry
	restaurant = from_foursquare["response"]["venues"][0]["name"]
end


def instagram
	#client_id
	client_id = "8d636c456fe14143b2a220b9ab059ea2"
	client_secret = "bfaba04a15f04d37a946d4ae14d6dec9"

	search_url = "https://api.instagram.com/v1/media/popular?client_id=#{client_id}&count=1"
	from_instagram = HTTParty.get(search_url)
	binding.pry
	video_url = from_instagram["data"][0]["videos"]["standard_resolution"]["url"]
	tags = from_instagram["data"][0]["tags"]
	location = from_instagram["data"][0]["location"]
	likes_count = from_instagram["data"][0]["likes"]["count"]
	caption = from_instagram["data"][0]["caption"]
	filter = from_instagram["data"][0]["filter"]
	standard_resolution_url = from_instagram["data"][0]["images"]["standard_resolution"]["url"]
	from_instagram["data"][0]["comments"]["count"]
	type = from_instagram["data"][0]["type"]
	from_instagram["data"][0]["users_in_photo"]
	#second zero is user who commented
	from_instagram["data"][0]["comments"]["data"][0]["text"]

end

def instagram_50_filters
	client_id = "8d636c456fe14143b2a220b9ab059ea2"
	client_secret = "bfaba04a15f04d37a946d4ae14d6dec9"

	search_url = "https://api.instagram.com/v1/media/popular?client_id=#{client_id}&count=50"
	from_instagram = HTTParty.get(search_url)

	array = []
	i = 0
	while i < 50
		filter = from_instagram["data"][i]["filter"]
		array.push(filter)
		i = i + 1
	end

	puts array
end

def instagram_50_captions
	client_id = "8d636c456fe14143b2a220b9ab059ea2"
	client_secret = "bfaba04a15f04d37a946d4ae14d6dec9"

	search_url = "https://api.instagram.com/v1/media/popular?client_id=#{client_id}&count=50"
	from_instagram = HTTParty.get(search_url)

	array = []
	i = 0
	while i < 50
		caption = from_instagram["data"][i]["caption"]["text"]
		array.push(caption)
		i = i + 1
	end

	puts array
end

def find_insta_user_id(username)
	client_id = "8d636c456fe14143b2a220b9ab059ea2"
	client_secret = "bfaba04a15f04d37a946d4ae14d6dec9"

	search_url = "https://api.instagram.com/v1/users/search?q=#{username}&client_id=#{client_id}"

	from_instagram = HTTParty.get(search_url)

	user_id = from_instagram["data"][0]["id"]
	puts user_id

end

def find_people_you_follow(user_id)
	client_id = "8d636c456fe14143b2a220b9ab059ea2"
	client_secret = "bfaba04a15f04d37a946d4ae14d6dec9"

	#need to figure out how to deal with pagination
	search_url = "https://api.instagram.com/v1/users/23307916/follows?client_id=#{client_id}"

	from_instagram = HTTParty.get(search_url)

	number_of_friends = from_instagram["data"].size

	array = []
	i = 0
	while i < number_of_friends
		users_you_follow = from_instagram["data"][i]["username"]
		array.push(users_you_follow)
		i = i + 1
	end

	puts array
end

def profile_stats(user_id)
	client_id = "8d636c456fe14143b2a220b9ab059ea2"
	client_secret = "bfaba04a15f04d37a946d4ae14d6dec9"

	search_url = "https://api.instagram.com/v1/users/23307916?client_id=#{client_id}"

	from_instagram = HTTParty.get(search_url)
	binding.pry
	#outputs – {"media"=>201, "followed_by"=>217, "follows"=>138}
	counts = from_instagram["data"]["counts"]
	return counts
end




binding.pry
