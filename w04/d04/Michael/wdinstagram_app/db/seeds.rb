# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Entries.delete_all

Entries.create(:author=>"John", :photo_url => "http://wac.450f.edgecastcdn.net/80450F/ultimateclassicrock.com/files/2012/10/beatles-bruce-mcbroom.jpg", :date_taken => Time.now, :caption => "Caption 1")
Entries.create(:author=>"Paul", :photo_url => "http://www.biography.com/imported/images/Biography/Images/Profiles/M/Paul-Mccartney-9390850-1-402.jpg", :date_taken => Time.now :caption => "Caption 1")
Entries.create(:author=>"Ringo", :photo_url => "http://www.biography.com/imported/images/Biography/Images/Profiles/S/Ringo-Starr-306872-1-402.jpg", :date_taken => Time.now :caption => "Caption 1")
Entries.create(:author=>"George", :photo_url => "http://images4.mtv.com/uri/mgid:file:docroot:mtv.com:/crop-images/2013/08/22/george_harrison.jpg?enlarge=false&matte=true&matteColor=black&quality=0.85", :date_taken => Time.now :caption => "Caption 1")


