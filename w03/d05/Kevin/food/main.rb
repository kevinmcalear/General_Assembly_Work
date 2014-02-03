require_relative 'food'

def fridge_list
  puts
  puts "Here Is A List Of All Current Fridges, Yo."
  puts "---------------------------------------------"
  Fridge.all.each do |fridge|
    puts fridge.id.to_s + ".    Location: " + fridge.location + "      Brand: " + fridge.brand + "      Cubic Inches: " + fridge.size.to_s
    puts
  end
end


def next_action
  puts
  puts
  puts
  puts "Now Go Do Somthing Else."
  puts "----------------------------------"
end


  system "clear"
  puts "MY FRIDGE MANAGER"
  puts


begin
  
  puts   
  puts "( 1 ) List all Fridges."
  puts
  puts "( 2 ) Add a Fridge."
  puts
  puts "( 3 ) Delete a Fridge."
  puts
  puts "( 4 ) View all food items in a specific fridge."
  puts
  puts "( 5 ) Add a food item to a fridge."
  puts
  puts "( 6 ) Eat a food item from a fridge (delete it)."
  puts
  puts "( 7 ) View all drink items in a specific fridge."
  puts
  puts "( 8 ) Add a drink item to a fridge."
  puts
  puts "( 9 ) Consume PART of a drink from a fridge (update its size in ounces)."
  puts
  puts "( 10 ) Consume ALL of a drink from a fridge (delete it)."
  puts
  puts "( Q ) uit this program."
  puts
  selection = gets.chomp.upcase

  case selection
    when "1"
      system "clear"
      
      fridge_list
      
      next_action
    
    when "2"
      system "clear"
      puts
      puts "What location will this fridge 'chillin' at?"
      location = gets.chomp
      puts "What brand is your fridge? "
      brand = gets.chomp
      puts "Last thing, how big is it? (in cubic feet)"
      size = gets.chomp
 
      Fridge.create(location: location, brand: brand, size: size)
      
      puts "New Fridge Added!"
      
      next_action
   
    when "3"
      system "clear"
      
      fridge_list
      
      puts "Now Tell Me The Fridge Number You Want To Delete."
      choice = gets.chomp
      
      Fridge.find_by(id: choice).destroy

      next_action
    
    when "4"
      system "clear"
      fridge_list
      
      puts "Tell Me The Fridge Number You Want To Peek Inside Of To Look At Its Food."
      choice = gets.chomp

      system "clear"
      Fridge.find_by(id: choice).foods.each do | food |
        puts food.id.to_s + ".    Name: " + food.name + "      It Is Vegan: " + food.is_vegan.to_s + "      When Put In Fridge: " + food.food_timestamp.to_s
        puts
      end
      
      next_action
    
    when "5"
      system "clear"
      fridge_list
      
      puts "Tell Me The Fridge Number You Want To Add Food To."
      id = gets.chomp
      puts "What Is This Food's Name?"
      name = gets.chomp
      puts "Is This Food Is Vegan. (type 'true' or 'false') "
      vegan = gets.chomp
     
 
      Food.create(name: name, is_vegan: vegan, fridge_id: id)
      
      puts "Your Food Has Been Added!"

      next_action
    
    when "6"
      system "clear"
      fridge_list
      
      puts "Tell Me The Fridge Number You Want To Peek Inside Of To Look At Its Food."
      choice = gets.chomp

      system "clear"
      Fridge.find_by(id: choice).foods.each do | food |
        puts food.id.to_s + ".    Name: " + food.name + "      It Is Vegan: " + food.is_vegan.to_s + "      When Put In Fridge: " + food.food_timestamp.to_s
        puts
      end
      puts "Now Tell Me The Number Of The Item You Want To NOM on."
      eaten_item = gets.chomp

      Food.find_by(id: eaten_item).destroy

      next_action
    
    when "7"
      system "clear"
      fridge_list
      
      puts "Tell Me The Fridge Number You Want To Peek Inside Of To Look At Its Drinks."
      choice = gets.chomp

      system "clear"
      Fridge.find_by(id: choice).drinks.each do | drink |
        puts drink.id.to_s + ".    Name: " + drink.name + "      It Has Alcohol: " + drink.has_alcohol.to_s + "      Drink Size: " + drink.drink_size.to_s + " oz."
        puts
      end
     
      next_action
    
    when "8"
      system "clear"
      fridge_list

      puts "Tell Me The Fridge Number You Want To Add A Drink To."
      id = gets.chomp
      puts "What Is This Drink's Name?"
      name = gets.chomp
      puts "It Will Get You Wasted. (type 'true' or 'false') "
      wasted = gets.chomp
      puts "How Many Ounces Is This Thing?"
      oz = gets.chomp
     
      Drink.create(name: name, has_alcohol: wasted, drink_size: oz, fridge_id: id)
      
      puts "Your Drink Has Been Stored!"
      next_action
    
    when "9"
      system "clear"
      fridge_list
      
      puts "Tell Me The Fridge Number You Want To Peek Inside Of To Look At Its Drinks."
      choice = gets.chomp

      system "clear"
      Fridge.find_by(id: choice).drinks.each do | drink |
        puts drink.id.to_s + ".    Name: " + drink.name + "      It Has Alcohol: " + drink.has_alcohol.to_s + "      Drink Size: " + drink.drink_size.to_s + " oz."
        puts
      end

      puts "Now Tell Me The Number Of The Item You Want To Drink."
      drank_item = gets.chomp
      puts "And How Much Do You Want To Drink?"
      amount = gets.chomp.to_i

      amount_left = Drink.find_by(id: drank_item).drink_size - amount
      Drink.find_by(id: drank_item).update(drink_size: amount_left)

      puts "Nice Drinkin Man! You have #{amount_left} oz. left!"
      next_action

    when "10"
      system "clear"
      fridge_list
      
      puts "Tell Me The Fridge Number You Want To Peek Inside Of To Look At Its Drinks."
      choice = gets.chomp

      system "clear"
      Fridge.find_by(id: choice).drinks.each do | drink |
        puts drink.id.to_s + ".    Name: " + drink.name + "      It Has Alcohol: " + drink.has_alcohol.to_s + "      Drink Size: " + drink.drink_size.to_s + " oz."
        puts
      end

      puts "Now Tell Me The Number Of The Item You Want To DOWN."
      drank_item = gets.chomp

      Drink.find_by(id: drank_item).destroy

      puts "CHUG, CHUG, CHUG! All gone."
      next_action
  end


end while selection != "Q"