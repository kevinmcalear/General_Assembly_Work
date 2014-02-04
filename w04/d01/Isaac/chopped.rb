require 'active_record'
require 'pry'
require 'pg'

create database chopped_db ; 

create table chefs ( id serial primary key , name varchar(50) ) ; 

create table dishes ( id serial primary key, chef_id integer references chefs(id) , course_id integer references courses(id) ) ; 

create table judges ( id serial primary key , name varchar(50) ) ; 

create table courses ( id serial primary key, round varchar(50) , ingredient varchar(50) ) ; 

create table ratings ( id serial primary key , rating integer , judge_id integer references judges(id) , dish_id references dishes(id) ) ; 

create table participations( id serial primary key , chef_id integer references chefs(id) , course_id integer references courses(id)) ;

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => 'itorresverdugo',
  :password => "",
  :database => "chopped_db"
  )

class Judge
  has_many :ratings
end

class Rating
  belongs_to :judge 
  belongs_to :course
end

class Ingredient
  belongs_to :course 
end

class Chef
  has_many :courses 
end

class Course
  belongs_to :chef 
  has_many :ingredients 
end

















