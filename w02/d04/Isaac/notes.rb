# DOMAIN PROBLEM DATA - modeling (form of encapsulation)
# data modeling is a different use of the term modeling. thinking about data in a structured way
# domain is a fuzzy concept. it is the outline of a real world situation that we want to describe or reflect in our program. 
# we are going to model the domain with out program
# ebay models an auction 
# tinder models a bar
# angry birds models things like physics, puzzles
# modeling we are going to remove the unnecessary stuff and describe situations
# domain ---> model (planning) ----> problem ---> implement (programming) ----> test and code--->feedback (acceptance)
# Waterfall problem. Involved a big planning section. MBA types tell the programmers here is what we want. Programmers get together, go through requirements gathering. Make up gant charts. Design doc. Implementation. Acceptance testing at the end. 
# Agile.  It is hard to sell. The software development cycle is now a relationship, and the cycle repeats itself over and over. No expectation that we will hash out exactly what the project will be. 
# People say agile is programming without planning. This is not true. Planning is incredibly important in agile
# Agile. Set up domain as the goal. Then start iterative development cycle: take a piece of our domain and model it as a problem.  Then we implement it, feedback.
# The goal is MVP, ie minimum viable product. 
# inception, pair programming , scrums, user stores
# a scrum is a brief standup with your other team mates. meetings suck, everyone hates meetings. rigid format of a meeting. 
# COWBOY CODING. lone ranger. no writing tests before writing code. not commenting well
# Describing the domain - envision the goal. that which does not relate to our purpose need not be modeled 
# Modeling the domain

# A BASKETBALL GAME
# goals: determine the winner, keep a log of the events of the game, box score, 
# list entities , their qualities or attributes, often adjectives or booleans, and the relationships between entities
# we describe the relationships as typal or interactive relationships. we redefine our typal relationships and arrange attributes accordingly
# reduce entities to least number necessary removing entities that are not actors integral to to the purpose or are ony integral to an entity 
# moved info into other entities
# redefine interactive relationships as behaviors ie verbs
# rewrite as a list of entities and behaviors

# game <---> team
# team <---> player
# player <--> stat 
# stat ---> shots: free throws, 2pt, 3pt, etc

# Game 
# begins, timeout, time in, finishes 

# Team 
# wins or loses, plays, calls timeout, puts in game, benches 

# Player 
# plays, has stats, contributes stats


















