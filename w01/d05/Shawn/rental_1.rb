#rental_1.rb
#Apartment Rental Listings

class ApartmentRentalApp

        def initialize
            main_menu = MainMenu.new
            main_menu.list_options
        end
       
        class MainMenu

        def initialize
              $building = Building.new
              $apartment = Apartment.new
              $person = Person.new
          end

              def list_options
              #building = Building.new
              #apartment = Apartment.new

              puts "
              Welcome to the Apartment Rental Database...

              Please select an option from the menu below:

              (a) View building details
              (b) Add an apartment to the building
              (c) Add a tenant
              (d) List the apartment directory for the building
              (e) Quit"

              input = gets.chomp()

              if input == "a"
                    #view_building_details
                    
                    $building.view_building_details()
                    list_options
              end

              if input == "b"
                    #add an apartment
                    
                    $apartment.add_new_apartment
                    #print $apartment.list_of_apartments

                    list_options
              end

              if input == "c"
                    #Add a tenant
                    $person.add_a_tenant
                    list_options
              end

              if input == "d"
                    # list apartment directory
                    #listing = Apartment.new
                     $apartment.apartment_list
                    list_options
              end

              if input == "e"
                    puts "Goodbye..."
              end
        end
        end

        class Apartment
              
              def initialize()
                  @list_of_apartments = []
                  @apartment_info = {}
              end

              def apartment_info=(apartment_info)
                  @apartment_info = apartment_info
              end

              def apartment_info
                 return @apartment_info
              end

              def list_of_apartments
                  @list_of_apartments = list_of_apartments
              end

              def list_of_apartments
                  return @list_of_apartments
              end

              def name=(name)
                @name = name
                self.apartment_info[:name]=name
              end

              def name
                 return @name
              end

              def price=(price)
                  @price = price
                  self.apartment_info[:price] = price
              end

              def price
                  return @price
              end

              def sqft=(sqft)
                  @sqft = sqft
                  self.apartment_info[:sqft] = sqft
              end

              def sqft
                  return @sqft
              end

              def num_bb=(num_bb)
                  @num_bb = num_bb
                  self.apartment_info[:num_bb] = num_bb
              end

              def num_beds
                  return @num_beds
              end

              def renter=(renter)
                  @renter = renter
                  self.apartment_info[:renter] = renter
              end

              def renter
                  return @renter
              end

              def add_new_apartment
                  new_apartment = {
                    :name => "",
                    :price => "",
                    :sqft => "",
                    :num_bb => "",
                    :renter => ""
                  }
                  puts "
                  Okay Let's add an apartment to the database:
      
                 First: What's the apartment number?"

                apt_name = gets.chomp
                new_apartment[:name] = apt_name
                puts "
                How much does #{apt_name} cost?
                "
                cost = gets.chomp
                new_apartment[:price] = cost
                puts "
                How many sq ft?
                "
                sqft = gets.chomp
                new_apartment[:sqft] = sqft 
                #self.sqft=(sqft)
                puts "
                Num beds/Num baths?
                "
                  num_bb = gets.chomp
                  new_apartment[:num_bb] = num_bb
                  #self.num_bb=(num_bb)
                  puts "
                  Who will rent this apartment?
                  "
                  renter = gets.chomp
                  new_apartment[:renter] = renter
                  #self.renter=(renter)

                  self.list_of_apartments.push(new_apartment)
                  puts "The following renter was added to the database:

                  Apt: #{new_apartment[:name]}
                  Price: $#{new_apartment[:price]}
                  Size: #{new_apartment[:sqft]} sq ft
                  Beds/Baths: #{new_apartment[:num_bb]}
                  Renter: #{new_apartment[:renter]}"
              end

              def apartment_list
                  puts "Here's the complete list of apartments for the building: " 
                  @list_of_apartments.each do |x|
                  puts "#{x[:name]}, which is being rented by #{x[:renter]}, has #{x[:num_bb]} beds/bath, is #{x[:sqft]} square feet, and costs $#{x[:price]}"
                end

              end
        end

      class Building

              def initialize
                  @building_array = [
                      @building_1 = {
                      :name => "The Marquis", :address => "780 Greenwich St.", :num_floors => 18, :apartments => 72
                    },
                      @building_2 = {
                        :name => "The Chateau", :address => "555 14th St", :num_floors => 8, :apartments => 12
                    },
                      @building_3 = {
                        :name => "The Fountainbleu", :address  => "123 Flamingo Rd", :num_floors => 28, :apartments => 125
                    }
                    ]
              end

              def view_building_details()
                  puts "
                  These are the building details: "
                  v = @building_array.sample
                  puts "
                  #{v[:name]} is located at #{v[:address]},
                  has #{v[:num_floors]}  floors & #{v[:apartments]} apartments!"
              end

              def building_name=(building_name)
                  @building_name = building_name
                  self.building_deets[:name] = @building_name
              end

              def building_deets=(building_name)
                  @building_deets = building_deets
              end

              def building_deets 
                  return @building_deets  
              end

              def building_name
                  return @building_name
              end

              def address=(address)
                  @address = address
              end

              def address
                  return @address
              end

              def num_floors=(num_floors)
                    @num_floors = num_floors
              end

              def num_floors
                  return @num_floors
              end

              def num_apts=(num_apts)
                  @num_apts = num_apts
              end

              def num_apts
                  return @num_apts
              end
        end

        class Person

            def initialize()
                  @full_list_of_tenants = [
                  @people = {
                  :name => "Shawn", 
                  :age=>"24",  
                  :gender=>"male",
                  :unit => "2G"
              }]
              end

              def full_list_of_tenants=(full_list_of_tenants)
                  @full_list_of_tenants = full_list_of_tenants
              end

              def full_list_of_tenants
                  return @full_list_of_tenants
              end

              def people=(people)
                  @people = people
              end

              def people
                  return @people
              end

              def name=(name)
                  @name = name
              end

              def name
                  return @name
              end

              def age=(age)
                  @age = age   
              end

              def age
                  return @age
              end

              def gender=(gender)
                  @gender = gender
              end

              def gender
                  return @gender 
              end

              def apt_num=(apt_num)
                  @apt_num = apt_num
              end
    
              def apt_num
                  return @apt_num
              end
    
              def add_a_tenant
                   new_tenant_info = {}
                   puts "What's the new tenant's name?"
                   new_name = gets.chomp
                   new_tenant_info[:name] = new_name
                   puts "How old is #{new_name}?"
                   new_age = gets.chomp
                   new_tenant_info[:age]=new_age
                   puts "Is #{new_name} male or female?"
                   new_gender = gets.chomp
                   new_tenant_info[:gender]=new_gender
                   puts "Which apartment?"
                   new_unit = gets.chomp
                   new_tenant_info[:unit] = new_unit
                   self.full_list_of_tenants.push(new_tenant_info)
                   puts "#{new_tenant_info[:name]} added to the database!"
                   print self.full_list_of_tenants

              end
        end
end

apartment_rental_app = ApartmentRentalApp.new

 
