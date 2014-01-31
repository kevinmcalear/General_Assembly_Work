## Mental Models

#### Concepts
- Describe the idea of encapsulation and why it is so powerful
- Describe what an interface is
- Give examples of how encapsulation is manifested in code

## Computer Effectiveness

#### Mechanics
- Manage windows and tabs effectively
- Keep your workspace clean and close unnecessary tabs, windows and programs
- Switch between programs using (cmd+tab)
- Save a file using (cmd+s)
- Find text using (cmd+f)

## Command Line

#### Concepts
- Explain what the command line is and why we use it

#### Mechanics
- See the path of the current directory
- See the contents in the current directory (including hidden files)
- Create new files and directories
- Change directories
- Copy files and directories
- Move files and directories
- Delete files and directories
- Open files and directories using Sublime

## Git & Github

#### Concepts
- Explain what Git is and why we use it
- Explain the difference between Git and Github
- Explain the difference between a fork, branch and clone
- Explain the difference between a fetch, merge and pull
- Diagram and explain how contributing to an open source project on Github works (or our homework submission process)

#### Mechanics
- Initialize a local git repository
- Create a new repository on Github
- Clone a repository from Github
- Pull changes from a repository on Github
- Add and commit changes to a git repository
- Push changes from a local git repository to Github
- Fork an existing repository from Github
- Add and remove a remote
- Use Github to submit a pull request

## Ruby Basics & Strings

#### Concepts
- Describe the different types in Ruby (numbers, strings, etc.)
- Explain what a reference is and how it relates to variable assignment
- Explain the difference between a string and a symbol and when you would use each

#### Mechanics
- Write code with proper indentation
- Name variables, classes and methods in a semantic way
- Reference the Ruby docs to learn more about Ruby
- Manipulate strings using concatenation & interpolation
- Use common string methods to manipulate strings (`.chomp`, `.split`, `.gsub`, etc)
- Get input from the user from the terminal using `gets`
- Print output to the terminal using `puts`
- Debug a Ruby program using binding.pry

## Ruby Control Flow

#### Concepts
- Compare if/else statements to case statments and explain when you would use each
- Compare while loops to enumeration and explain when you would use each

#### Mechanics
- Use boolean logic (&&, ||, !) to combine and manipulate boolean statements
- Use if, else, elsif statements to control logic flow in a Ruby program
- Use Ruby case statements
- Use while loops to execute code multiple times

## Ruby Methods

#### Concepts
- Explain the principle of DRY
- Explain what a method is and why it is useful

#### Mechanics
- Define and use methods with arguments
- Return values from a method

## Ruby Collections

#### Concepts
- Explain the difference between a data structure and a data type
- Explain the difference between an array and a hash and when you would use each

#### Mechanics
- Create an array, access items in an array, change the value of items in an array
- Create a hash, access items in a hash, change the value of items in a hash
- Create, access items in, change the value of items in, and manipulate items in nested collections (arrays & hashes)

## Blocks & Enumeration

#### Concepts
- Explain what a block is
- Explain the difference between `.each` and `.map` and when you would use each
- Identify when and how to use the enumerator methods  `.each`, `.map`, `.join`, `.select`, `.reduce`

#### Mechanics
- Use built in Ruby methods to enumerate over a collection 

## File I/O

#### Mechanics
- Read data in from a file and parse it
- Write data to a file

## Ruby Objects

#### Concepts
- Explain what object-oriented programming is
- Explain the difference between class and instance methods
- Explain the difference between local, instance and class variables
- Explain the use of self in Ruby
- Explain what inheritance is and when it should be used

#### Mechanics
- Write a class with an initialize method
- Write setter and getter methods
- Write instance methods
- Instantiate and use an object
- Write a class that inherits from another class
- Create multi-file Ruby programs using `require_relative`

## Test-Driven Development

#### Concepts
- Contrast the agile and waterfall approaches to developing software
- Explain what TDD is and its benefits. Compare it to "cowboy coding."
- Explain what RSpec is

#### Mechanics
- Read Rspec tests that have already been written for a Ruby program and make them pass one at a time
- Set up a Ruby program with RSpec
- Set up RSpec tests using
  - `describe`
  - `it`
  - `context`
  - `before`
  - `let`
  - `subject`
- Write tests using expectations
  - `to` and `not_to`
  - `eq`, `eql`, `equal`
  - `be_true`, `be_false`

## Domain Modeling

#### Concepts
- Explain what a "domain" is, how it is different from a "problem", and why we would want to model it into a problem.

#### Mechanics
- Model a "domain" into a "problem" by listing its parts (entities, relationships, attributes and behavior). 
- Use the TDD/BDD process to transform a problem into code.

## Software Design

#### Concepts
- Explain the following principles of good software design
  - DRY
  - Naming
  - Test
  - Small

## Databases

#### Concepts
- Explain what a database is and why you would use one as opposed to other persistent storage mechanisms
- Explain the difference between a database management system (R/DBMS) and a database, and name the major DBMSes
- Explain how a DBMS, a database, and SQL relate to one another
- Explain ACID in laymans terms
- Describe the parts of a schema (ie, an ERD): entitites, attributes and relationships
- Explain what "auto-incrementing primary key" means for a database table
- Explain what a foreign key is and why you would use one
- Explain what a constraint is
- Explain what a join is and when you would use one
- Describe what `psql` is
- Describe what `pg` is

#### Mechanics
- Design a database schema
- Use SQL to structure your schema:
  - CREATE DATABASE / CREATE TABLE
  - DROP DATABASE / DROP TABLE
  - ALTER TABLE
- Use SQL to access your data:
  - SELECT
  - INSERT
  - UPDATE
  - DELETE
- Modify SQL queries:
    - AS
    - WHERE
    - ORDER BY
    - GROUP BY
    - SUM, COUNT, AVERAGE
  - Connect a Ruby program to a database and run queries to both save and retrieve information

## Mental Models for Computing

#### Concepts
- Define what a library is and what they are called in Ruby
- Articulate the concept of "convention over configuration" and the tradeoffs associated with it
- Articulate the approach for reading documentation for the first time

## ActiveRecord

#### Concepts
- Explain what an ORM is and why we use it (vs. writing SQL directly)
- Explain what ActiveRecord is and describe its benefits
- Define the term metaprogramming and describe how it relates to ActiveRecord
- Distinguish between when data is stored in memory vs when it is stored in the database and give examples of when each would happen
- Explain what ActiveRecord validations are, how they and how they affect persistence
- Compare and contrast SQL constraints with AR Validations
- Explain how to use ActiveRecord to manage relationships

#### Mechanics
- Use the following ActiveRecord commands and describe the associated SQL statements that they write:
  - new
  - save
  - create
  - all
  - find
  - find_by
  - where
  - update_attributes
  - delete vs destroy
- Set up an ActiveRecord Association for a one-to-many relationship
- Set up an ActiveRecord Association for a many-to-many relationship
- Set up ActiveRecord validations for a model:
  - presence
  - uniqueness