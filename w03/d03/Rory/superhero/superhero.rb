#CREATE DATABASE superhero_db;
#CREATE TABLE superheroes (id serial PRIMARY KEY, superhero_name varchar(50) NOT NULL, alter_ego varchar(50) NOT NULL, has_cape boolean NOT NULL, power varchar(50) NOT NULL, arch_nemesis varchar(50) NOT NULL);

require 'pg'

puts "Welcome to Superhero Database"
puts ""

def menu
  puts "Enter a selection: "
  puts "(I) Index - List all Super Heros"
  puts "(C) Add a Super Hero"
  puts "(R) View all info for a specific Super Hero"
  puts "(U) Update a Super Hero"
  puts "(D) Remove a Super Hero"
  puts "(Q) Quit"
end

menu
choice = gets.chomp.downcase


 c = PG.connect(:dbname => "superhero_db")


while choice !="q"
 case choice
    when "i"
      list = c.exec("SELECT * FROM superheroes;")
      list.each{|row|puts row}
      menu
      choice = gets.chomp.downcase

    when "c"
      puts "Enter a superhero name: "
      superhero_name = gets.chomp
      puts "Enter alter ego: "
      alter_ego = gets.chomp
      puts "Does the superhero have a cape?"
      has_cape = gets.chomp
        if has_cape == "yes"
          has_cape = true
        else
          has_cape = false
        end
      puts "What is the superhero's power?"
      power = gets.chomp
      puts "Who is the superhero's arch nemesis?"
      arch_nemesis = gets.chomp

      c.exec("INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis) VALUES ('#{superhero_name}', '#{alter_ego}', '#{has_cape}', '#{power}', '#{arch_nemesis}');")
      menu
      choice = gets.chomp.downcase
    
    when "r"
      puts "Enter a superhero name: "
      superhero_name = gets.chomp
      c.exec("SELECT * FROM superheroes WHERE superhero_name = #{superhero_name};")
      menu
      choice = gets.chomp.downcase
    
    when "u"
      puts "Which superhero do you want to update?"
      superhero_name = gets.chomp
      puts "Which attribute would you like to update?  The options are superhero name, alter ego, has cape, power, or arch nemesis."
      attribute_to_update = gets.chomp.downcase
      if attribute_to_update == "superhero name"
        attribute_to_update = superhero_name
      elsif attribute_to_update == "alter ego"
        attribute_to_update = alter_ego
      elsif attribute_to_update == "has cape"
        attribute_to_update = has_cape
      elsif attribute_to_update == "power"
        attribute_to_update = power
      elsif attribute_to_update == "arch nemesis"
        attribute_to_update = arch_nemesis
      else puts "That is not an option"
      end
      puts "What do you want to change it to?"
      new_super_hero_info = gets.chomp

      if new_super_hero_info.downcase == "yes"
        new_super_hero_info = true
      else
        new_super_hero_info = false
      end

      c.exec("UPDATE superheroes SET #{attribute_to_update} = #{new_super_hero_info} WHERE superhero_name = #{superhero_name};")
      menu
      choice = gets.chomp.downcase
    
    when "d"
      puts "Enter a superhero name: "
      name = gets.chomp
      c.exec("DELETE FROM superheroes WHERE superhero_name='#{name}';")
      menu
      choice = gets.chomp.downcase
    
    else
      puts "That is not an option.  Enter new choice."
      menu
      choice = gets.chomp.downcase
    
    end
  end



c.close

