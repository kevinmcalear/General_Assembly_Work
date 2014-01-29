class Grammys
  attr_reader :year, :category, :winner

  @@grammys = []

  def initialize(year, winner, category)
    @year = year
    @category = category
    @winner = winner
    @@grammys <<self
  end

  def self.all
    @@grammys
  end

  def self.grammys
    @@grammys
  end

  def self.clear
    @@grammys = []
  end

  def self.add(grammy)
    @@grammys << grammy
  end

  def self.list_all
    @@grammys.each_with_index do |grammy, i|
      puts "#{i + 1} #{grammy.year} #{grammy.category} #{grammy.winner}"
    end
  end

  def self.delete(index)
    @@grammys.delete_at(index)
  end

  def self.save_all(file_path)
    f = File.new(file_path, "a+")
    @@grammys.each do |grammy|

      f.write("#{grammy.year}\t#{grammy.category}\t#{grammy.winner}|")
    end
  end

  def self.load_all(file_path)
    f = File.open(file_path, "a+")
    arr = f.readlines("|")
    arr = arr.map do |line|
      line.split("\t")
    end
    arr.each do |line|
      Grammys.new("#{line[0]}".to_i, "#{line[1]}", "#{line[2].delete("|")}")
    end

  end

end