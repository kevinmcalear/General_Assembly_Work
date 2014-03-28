## Mental Models

#### Concepts
* Describe the idea of encapsulation and why it is so powerful
* Describe what an interface is
* Give examples of how encapsulation is manifested in code
* Describe what a tree is and identify examples of trees.
* Identify parents, children, and siblings in a particular manifestation of a tree.

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
- Explain and follow the principles of good software design
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

## Networking

### Concepts
- Explain what the client-server model is
- Define a "communication protocol" in reference to computer communications
- Name the four basic parts of the Internet protocol suite (the TCP/IP stack), and articulate the purpose of each.
- Explain the purpose of having a protocol "stack."
- Describe the basics of the HTTP protocol, and explain what a HTTP Request is.
- Compare and contrast between the two "modes" of using HTTP.
- Explain the difference between GET and POST and when you would use each.
- Describe, in simple terms, the premise of REST.
- Describe the parts of a url in detail

## Sinatra Basics

### Concepts
- Describe what Sinatra is and what it is used for
- Define what WEBrick and Rack are
- Distinguish between a route and a path

### Mechanics
- Build a Sinatra app that responds to HTTP requests
- Define routes using Sinatra
- Define routes with URL paramters and access those parameters

## Sinatra with HTML & ERB

### Concepts
- Explain the idea of "separation of concerns" and why it is so important
- Explain the different roles of HTML, CSS & JavaScript

### Mechanics
- Create an HTML page and use common tags
- Use ERB templates to create dynamic pages and render views
- Pass values into views using instance variables
- Include an outside file (stylsheet or script) in a Sinatra app 

## Sinatra with Forms & Persistence

### Mechanics
- Write an HTML form that formats parameters as expected by the server
- Create a RESTful Sinatra app backed by a database using ActiveRecord

## Ruby on Rails

### Concepts
- Explain what Ruby on Rails is and its architectural components using a diagram
- Articulate three benefits of using Ruby on Rails as a web application framework
- Explain what "convention over configuration" means and how it relates to Ruby on Rails
- Describe the lifecycle of an HTTP request in Ruby on Rails
- Explain the components of the "MVC" software pattern and what each component is responsible for
- Explain what a database migration is and why we use it

### Mechanics
- Follow Rails naming conventions when creating models, views and controllers
- Create a database migration to alter your database schema
- Seed a database using the seeds file in Rails
- Create a Rails App with CRUD actions (new, create, index, show, edit, update, destroy)
- Create a Rails App with multiple models associated correctly
- Define routes in a RESTful way for nested resources

## Agile Development Process

### Concepts
- Describe what a user story is, how it is structured, and the benefits of structuring it in this way
- Describe the agile project management workflow (including what a sprint is and what typically happens during a sprint)
- Describe what a scrum meeting is, when it happens, and what the structure is.

### Mechanics
- Write well-written user stories
- Manage the development of an app using Pivotal Tracker

## Ruby on Rails

### Concepts
- Debug your Rails app by looking at error messages and using the rails console and pry
- Explain what `fat models, skinny controllers` means
- Explain strong parameters / whitelisting in Rails
- Explain the difference between redirect and render

### Mechanics
- Define routes in a RESTful way using `resources`
- Use path helpers & `rake routes` to match routes to controller actions
- Use partials to DRY up your views
- Use link helpers to simplify your links
- Use form helpers to simplify your forms
- Write custom helper methods for your controllers & views
- Implement before actions in the controller

## Authentication & Authorization

### Concepts
- Explain what a session is
- Explain what a cookie is
- Explain the difference between Authentication and Authorization

### Mechanics
- Access and set session variables
- Write an application with authentication using bcrypt
- Authorize logged in users to perform certain actions in an application

## Shoulda Matchers

### Concepts
- Explain what shoulda matchers are and why they are useful

### Mechanics
- Use shoulda matchers for model validation
- Use shoulda matchers for ActiveRecord associations

## Acceptance Testing

### Concepts
- Explain what acceptance testing is, why it is used, and where it fits in the Agile workflow
- Explain the difference between acceptance testing and unit testing
- Explain what Capybara is and how it tests your app

### Mechanics
- Write acceptance tests for a Rails app using Capybara with Rspec
- Write unit tests for a Rails app using Rspec

## Other Testing

### Concepts
- Explain what factory girl does and why it is useful
- Explain what test coverage is and what it is and isn't useful for

### Mechanics
- Use factories to create test objects in Rails
- Measure test coverage for a Rails app using SimpleCov

## CSS & the DOM

### Concepts
- Explain the DOM, what it is, and how it is structured
- Name the parts of a DOM (document, nodes, elements), how they differ, and why the exist
- Explain how to use CSS selectors and declaration to alter the style of an element
- Explain the difference between an id and a class and when you should use each
- Explain the difference between display block, inline and inline-block
- Explain the box model and the relationship between height, width, margin, border and padding.
- Explain the difference between absolute, relative and fixed positioning
- Explain how CSS specificity is determined
- Explain what CSS reset and normalize are used for and how they differ
- Explain what vendor prefixes (-webkit, -moz, -o) are and when / why we use them
- Explain what different @ rules are used for, including: @import, @font-face, and @media
- Explain what pseudo classes are, what they are used for, and give a few examples

###Mechanics
- Identify a possible HTML structure for a website based on its layout
- Interperet the HTML stucture of an website and edit it to change an existing layout
- Use the web inspector to view the styles applied to a web page and make temporary changes
- Link a CSS stylesheet to an HTML page
- Select elements using tag, class and id selectors and change their styles
- Write @media rules to implement a responsive design
- Implement a mockup

## Rails Assets

### Concepts
- Explain what the Rails Asset Pipeline is and why it is used
- Explain which assets go in the lib directory vs the vendor directory
- Explain what manifest files are and how to determine which files they include

### Mechanics
- Use asset link helpers to refer to assets in the asset pipeline

## JavaScript

### Concepts
- Compare and contrast Ruby and JavaScript as programming languages
- Explain what a "primitive" is
- Describe the different types of Javascript assignment and automatic type conversion
- Identify the difference between `==` and `===` in JavaScript and when to use each
- Differentiate between context and scope
- Explain `var` and its effect on scope in JavaScript
- Identify what creates a new scope in JavaScript
- Explain what the `window` refers to in JavaScript
- Identify the value of `this` in different contexts.
- Explain the difference between classical and prototypal inheritance.
- Explain the difference between calling and referencing a function in JavaScript.

### Mechanics
- Follow a JavaScript style guide and use the appropriate syntax
- Create an array, access items in an array, change the value of items in an array
- Use a for loop for iteration
- Define a function in JavaScript
- Create objects using literal notation
- Define an object and instantiate new copies of it using a constructor function.
- Access property values in a JavaScript object
- Explain the difference between defining instance-level behavior and prototype-level behavior and how that relates to inheritance.
- Use `bind` and `call` to manage execution context.

## Testing & Debugging

### Concepts
- Explain what Jasmine is and when it is useful
- Compare Jasmine to Rspec
- Describe how debuggers work by explaining breakpoints, steps, watched variables, and the call stack.

### Mechanics

- Use Chrome Web Tools to debug JavaScript in the browser
- Use Jasmine as a BDD testing framework with JavaScript.
- Use `describe` and `it` blocks with expectations and matchers to write Jasmine tests

## The DOM & Events

### Mechanics
- Select and target DOM elements using a query selector
- Change the attributes or content of a DOM element
- Add and remove elements from the DOM
  - `appendChild`
  - `insertAdjacentElement`
  - `remove`
- Attach an event listener to a DOM element
- Use a callback function in order to attach behavior to events.

## JavaScript Timers

### Mechanics
- Use setTimeout to execute code after a specific delay
- Use setinterval & clearinterval to repeatedly execute code at specific intervals

## jQuery

### Concepts
- Explain what a namespace is
- Explain what jQuery is used for
- Explain the difference between a DOM element and a jQuery object
- Explain the differenve between a DOM event and a jQuery event
- Describe when anonymous functions are commonly used, and why
- Explain what delegated events are
- Explain what stopPropagation does in relation to events

### Mechanics
- Use namespaced JS objects to avoid polluting the global namespace
- Reference the jQuery documentation to figure out things you don't know how to do
- Create a jQuery object
- Select DOM elements by: id, class name, tag, or using a query selector
- Change the attributes or content of a DOM element
- Append and remove elements from the DOM
- Add event listeners using jQuery
- Use method chaining with good style in JS

## AJAX

### Concepts
- Explain what JSON is and what it is used for
- Explain what AJAX is and why you would use it
- Explain what a callback function is
- Decide and defend what functionality should be implemented on the client-side with JavaScript and what should be implemented on the server-side with Rails
- Explain what preventDefault does for a form

### Mechanics
- Include JavaScript files in a Rails app
- Use AJAX to GET information from the server and handle the JSON response
- Use AJAX to POST information to the server