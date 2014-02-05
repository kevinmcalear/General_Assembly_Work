# Superhero Database

### Prompt

Design a Ruby program that manages a database of superheros. The database should be backed by SQL to persist the data.

### Directions

* Don't use objects
* Don't write tests

### Menu Spec

Your program should have a menu that allows you to perform the following actions:

* (I) Index - List all Super Heros
# SELECT superhero_name FROM superheroes;
* (C) Add a Super Hero
# INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis) VALUES ('#{superhero_name}', '#{alter_ego}, #{has_cape}', '#{power}', '#{arch_nemesis}')
* (R) View all info for a specific Super Hero
# SELECT * FROM superheroes WHERE superhero_name = '#{superhero};
* (U) Update a Super Hero
# ***
* (D) Remove a Super Hero
# DELETE FROM superheroes WHERE superhero_name='#{superhero_name}'
### Super Hero Spec

A Super Hero has the following attributes:

* superhero_name
* alter_ego
* has_cape?
* power
* arch_nemesis

### Bonus

* Populate your database from the csv file
* Add the option to delete all caped super heroes