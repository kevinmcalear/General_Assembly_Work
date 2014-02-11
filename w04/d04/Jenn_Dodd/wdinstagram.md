##WDInstagram

### Prompt
We're going to create a one model Rails CRUD App from scratch. Our one model here is going to be an Entry.

An Entry has the following:

* Author
* Photo_url
* Date_taken

Your Rails app should have the following controller actions:

* Index (Displays all entries)
* New (Displays a form to create a new entry)
* Create (Creates a new entry and saves it to the database)
* Show (Displays one particular entry)

### Instructions

x 1. Create a new rails app called wdinstagram_app `rails new wdinstagram_app -d postgresql`
x 2. Configure your "config/database.yml file" (add your username, and add localhost as a host)
x 3. Create a database for your app using psql
x 4. Create a migration file that will help you create your entries table
x 5. Run `rake db:migrate` to actually create that table
x 6. Create your entry model 
x 7. Create routes for your app using resources (make sure there are only routes for the actions that we need!)
x 8. Create a controller with the required controller actions (listed above)
x 9. Define the method for a controller action, then create any corresponding views for that action.
x 10. Move on to the next controller action until you are done.

### Bonus

1. Add validation: name and photo_url need to be present, and the date_taken should be more recent than 10/1/2010.
2. Add a column for `caption` to your Entry, which is a text description of the shot. You'll need to generate a database migration for this and then update the rest of your app to be able to display these captions.
