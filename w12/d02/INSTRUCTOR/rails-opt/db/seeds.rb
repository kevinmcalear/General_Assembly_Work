# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
Author.destroy_all

20.times do
  # 20 authors
  author = Author.create(name: Faker::Name.first_name)

  # 20 posts for each author
  20.times do
    Post.create(author: author, content: Faker::Lorem.paragraph)
  end
end