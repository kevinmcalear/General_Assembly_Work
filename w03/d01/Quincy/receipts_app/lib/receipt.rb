class Receipt
  
  @@receipts = []

  def initialize(store, item, quantity, price, date)
    @store = store
    @item = item
    @quantity = quantity
    @price = price
    @date = date

    @@receipts << self
  end

  def store
    return @store
  end

  def item
    return @item
  end

  def quantity
    return @quantity
  end

  def price
    return @price
  end

  def date
    return @date
  end

  def to_s
    return "Receipt: #{@store}, #{@item}, #{@quantity}, #{@price}, #{@date}"
  end

  def self.all
    return @@receipts
  end

  def self.clear
    @@receipts = []
  end

  def self.save_all(path)
    File.new(path,"w+")

    f.each do |line|
      line_array = line.spilt("\t")
      Receipt.new(line_array[0], line_array[1], line_array[2], line_array[3], line_array[4])
    end

    @@receipts.each do |receipt|
      f.puts  "#{@store}\t#{@item}\t#{@quantity}\t#{@price}\t#{@date}"
    end
  end

end