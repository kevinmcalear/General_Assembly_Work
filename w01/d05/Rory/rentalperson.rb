class Person

  def initialize()
    @person_hash = Hash.new
  end

  
  def name=(input)
    @name=input
  end

  def name
    return @name
  end

  def age=(input)
    @age=input
  end

  def age
    return @age
  end

  def gender=(input)
    @gender=input
  end

  def gender
    return @gender
  end

  def add_person_to_hash(x)
    @person_hash[x] = {:age => @age, :gender => @gender}
  end

  def person_hash
    return @person_hash
  end

end

puts "Menu"
puts "(v)iew apartment details, add an (a)partment to the building, add a (t)enant, (l)ist the apartment directory, or (q)uit?"
user_input = gets.chomp.downcase 

if user_input == "t"
  add_tenant = Person.new
    puts "What is your name?"
    add_tenant.name = gets.chomp
    puts "What is your age?"
    add_tenant.age = gets.chomp
    puts "What is your gender?"
    add_tenant.gender = gets.chomp
    add_tenant.add_person_to_hash(add_tenant.name)
end

puts @person_hash

