### MONGO DB

*What problem does it solve?*

If you’re unclear about what the schema needs to be, it accepts “Documents” which can have any number of fields (which are like attributes) Rather than running multiple migrations every time you need to change the table.  

Complex objects can be stored without complex relational mapping.  The lack of schema structure allowed for more flexibility, and it’s a programmer friendly datatype - similar to JSON(called BSON) 

*Why would I use it? Alternatives?*

Much faster queries because of Key: Value relationship.  Much more scalable than a traditional table based DB - because of the dynamic schema(or lack of schema) there isn’t the concern of multiple migrations 

Mongo vs other Nosql - Couchdb, reddis are alternatives, reddis stores everything in client side memory.  Couchdb documents are stored in json and accessed via HTTP requests through a browser

### PHP

What it is:
* A server-side scripting language

1)  What problem does it solve?

-free
-easy to learn
-easy to deploy
-it’s like a programming language embedded in HTML

2) Why use it?

-big community
-flexible, easy to deploy
-good documentation
-even can use Active Record (there’s a library)
-has many frameworks and libraries

3)  Alternatives

-any other server-side language- python, ruby, c, java, etc

4) How does it work?

-language is interpreted on server side, sent as HTML
-1-1 correspondence between pages and files

Good:

-Especially great for static sites that require a lot of flexibility
-There’s a 1-1 correspondence between URLs and files in the filesystem
-Deployment simply requires uploading or copying your files
-PHP can be lightweight, flexible, and easy to learn without since you don’t have to use a framework with routes, controllers, etc

Bad:

-Testing is difficult - no Rspec
-Multiple ways of handling errors
-Certain syntax of the language isn’t very semantic
-Only very recently incorporated namespacing- you have thousands of automatically imported functions plus third party code floating in the global namespace
-Compiles the script on each request, which is slow, though there are 'bytecode caches’ to fix this
-There is no standard, widely adopted way to create and install modules or code libraries
-Lacks convention over configuration- PHP projects tend to each be arranged uniquely by the creators, which makes handing off to other developers more difficult (though this is true of all languages that don’t use frameworks)
-Huge amount of frameworks make it more difficult to learn from others’ code

### SASS WITH FOUNDATION & BOOTSTRAP 

1. What problem does it solve?

-Frameworks: Ready-made templates so you can get a website up and running in no time
-Sass: Easily manage larger stylesheets (@include works)

2.  Why would I use it?

-easy to use, saves time and effort
-with SASS, less code, easier to maintain & DRYness
-Mixins – reusable fragments of CSS that can be injected into arbitrary part of a stylesheet

3. Alternatives?

CSS preprocessor alternatives:  LESS, Stylus 
ON CSS PREPROCESSORS:  “take code written in the preprocessed language and then convert that code into the same old css we’ve been writing for years.  Because they aren’t css, they aren’t bound by the limitations of css.The preprocessed language can give you more functionality than css as long as it eventually makes sure everything is output as css and works in a browser like we expect.”
FE templates alternatives: plenty of options like Skeleton, HTML5 Boilerplates, Kickstrap 

4. How does it work?
-Frameworks: Add classes to your html elements
-Sass: create a .scss file, use partials, and mixins

FOUNDATION VS BOOSTRAP

“MAIN DIFFERENCE: “Bootstrap tries to give you everything you’ll ever need to bootstrap your project. Foundation just gives you the foundation to build upon.”

Question to ask yourself when deciding to use Bootstrap or Foundation:
Do you want something easy to use and ready to make your web app come to life? Or do you rather plan your CSS carefully and have the least you need to use as the base to your project?
The answer is: Bootstrap. Foundation. Respectively”
foundation
written in SASS
advantages:
- easier to customize your own framework
- stripped down 
- uses REM (instead of EM)
- “mobile first” approach: works on any 4 corner screen & forces you to focus on what’s most important to user

disadvantages:
- does not work well with IE8(?)
- not many choices
- smaller community
-can be dangerous because it does compile and it can be uncertain

bootstrap 
written in LESS & SASS

advantages:
- fast & easy
- out of the box framework.  bigger
- big community

disadvantages:
- too many options (like wordpress)
- uses pixels (instead of EM or REM), meaning you’ll have to explicitly declare a height, width, padding, margin 

### Angular.js

What Problem does it solve and how does it solve it
It makes HTML more dynamic by rendering live views. Environment is more expressive than just a static page.

Why would you use it? 
So you can split up your app into MVC components and Angular will hook those up for you and render them however you choose. It has a lot of built in functionality like filters for searches.
Angular has the largest community because it has been around the longest.
It also encourages testing.

What are the alternatives?
Backbone, CanJS, Ember
Backbone is said to be more flexible than Angular

### Node.js
1. What problem does it solve? How does it do it (conceptually)?

* Node.js is especially useful for real time interaction
* Can continually listen for requests
* Allows for more configuration, less convention 
* Input/Output is more efficient 
* Non-blocking, event driven
* How: Acts as intermediate between client and server, always listening for events

2. Why would I use it? What are the alternatives?

* When you want to build fast, scalable network applications,
* “Capable of handling a huge number of simultaneous connections with high throughput, which equates to high scalability”
* Alternatives: Rails, Sinatra, other frameworks
* Don’t want to use Node.js for CPU-intensive operations

### Phonegap

What problem does it solve? How does it do it (conceptually)?
A simple solution for web developers who know HTML5, CSS and JavaScript to create a native mobile app. This code is also cross platform so you can reuse your HTML5, CSS3 and JavaScript to make an iPhone, Android, Blackberry and Windows phone apps. Phonegap basically provides a wrapper to make a native app with access to the phones camera, accelerometer, contacts etc  with JavaScript. 

Why would I use it? What are the alternatives?
If you don’t want to learn Objective-C or Java to create a native ios or android app, PhoneGap is a fast solution to create a native app that has access to the phones capabilities. Besides learning Java (android) or Objective-C (iOS), there are a few other services such as Titanium and Cocoon. Titanium is better if you want to interact more with the iphones native capabilities, and Cocoon is the best if you don’t need any of the phones native capabilities and are just using HTML5.

### Ember.js
Ember.js ia an open source client-side JS front-end framework based on MVC. It's an object-oriented approach to JS and it's useful for creating SPAs. It's like Rails for JS.

Use it if you want the MVC structure on the client-side. It's more structured than Backbone. It's very useful for having changes to models render real-time in the browser. It utilizes Handlebars for templating. 

Alternatives are Backbone, Angular, and other MV* frameworks for JavaScript.

### Python

Python is the Swiss Army Knife of programming languages – it’s incredibly fast, powerful and an open-source solution that’s the right tool for many tasks from basic computational functions to web development for robust applications. Created slightly before Ruby in 1991, Python is still more popular. Python is coupled with Django to create web applications. 

Problems solved: 
  * need a versatile and scalable language and framework (Django)
  * need something incredibly readable (BEWARE: strict indentation/white space rules!)

Alternatives:
  * Ruby
  * PHP
