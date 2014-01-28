#grammys.rb

class Grammy
  @@grammys = []

  def initialize(year, category, winner)
    @year = year
    @category = category
    @winner = winner
    @line_array = []

    @@grammys << self
  end

  def year
    @year
  end

  def category
    @category
  end

  def winner
    @winner
  end

  def to_s
    "Year: #{@year}, Category: #{@category}, Winner: #{@winner}"
  end

  def line_array
    return @line_array
  end

  def self.clear
    @@grammys.clear
  end

  def self.all
    return @@grammys
  end

  def self.delete_grammy(index)
    @@grammys.delete(@@grammys[index])
    end

    def self.save_all(path)
      f = File.new(path, "w+")
      @@grammys.each do |grammy|
        f.puts "#{grammy.year}|#{grammy.category}|#{grammy.winner}"
      end
      f.close
    end

    def self.read_all(path)
      f = File.new(path, "a+")
      f.each do |line|
        line_array = line.split("|")
        Grammy.new(line_array[0], line_array[1], line_array[2])
      end    
    end


    def self.list_all_year(year_win)
      @@grammys.each do |grammy|
        if year_win == grammy.year
          puts grammy.to_s
        end
      end
    end

      # def self.list_all_category(category_win)
      #   @@grammys.each do |grammy|
      #     if category_win == grammy.category
      #       return grammy.to_s
      #     end
      #   end
      # end
  end