# Domain Modeling

For each of the following, read the domain, then model it into a problem with entities and relationships. Draw an ERD diagram. From your ERD diagram, design a database schema.

###Fridge Managment App
You are building an app to help General Assembly manage their fridges. The app should allow you to keep inventory of all the food in a fridge, organize it, throw out food that's gone spoiled, etc.

Fridge table
ID       NAME    LOCATION
1         Bob       GA kitchen
2 ...

Food table
ID       NAME       FRIDGE ID (foreign key)         throw away?
1        apple       2                                            no

###Library
You are building an app that allows children to borrow books from the library. Your app should keep track of who borrowed which books and which books people currently have borrowed.

Books
ID      Book      OUT/IN     Date DUE       Borrower_key (foreign key)


Borrwers
ID         Name         



###Rental App
We are building an app to facilitate the rental process. We have many buildings, each with apartments that are either available for rent or occupied. We have tenants that live in our apartment buildings.


Apartments
ID          BUILDING KEY   FK   


Buildings
ID      Name


Tenants
ID       name       apartment_key FK








