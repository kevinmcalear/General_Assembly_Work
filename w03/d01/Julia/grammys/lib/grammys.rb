class Grammy

  @@grammys = []

  def initialize(year, category, name)
    @year = year
    @category = category
    @name = name

    @@grammys << self
  end

  def year
    return @year
  end

  def category
    return @category
  end

  def name
    return @name
  end

  # def grammys
  #   return @@grammys
  # end

  def to_s
    return "#{@year}, #{@category}, #{@name}"
  end

  def self.list_all
    return @@grammys
  end

  def self.delete
    # Print a list of the grammy's with their index
   @@grammys.each do |grammy|
     puts "#{@@grammys.index(grammy)}, #{grammy.year}, #{grammy.category} #{grammy.name}"
    end
    puts "Which number would you like to delete?"
    index = gets.chomp.to_i
    return @@grammys.delete_at(index)
  end


  def self.clear
    @@grammys = []
  end

  # def read_all(file_name)
  # end
  def self.read_all(path)
    f = File.new(path, "a+")
    f.each do |line|
      line_array = line.split("|")
      Grammy.new(line_array[0], line_array[1], line_array[2])
    end

    f.close
  end

  def self.save_all(path)
    f = File.new(path,"w+")

    @@grammys.each do |receipt|
      f.puts "#{grammy.year}\|#{category.year}\|#{name.year}"
    end

    f.close
  end

end
