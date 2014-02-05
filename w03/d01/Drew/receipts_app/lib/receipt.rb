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
    @@receipts
  end

  def self.clear
    @@receipts = []
  end

# self.save_all- self. is used when calling on the class
  def self.save_all(path)
    f = File.new(path, "a+")
    @@receipts.each do |receipt|
      f.puts "Receipt: #{receipt.store}\t#{receipt.item}\t#{receipt.quantity}\t#{receipt.price}\t#{receipt.date}"
    end
    f.close
  end

  def self.read_all(path)
    f = File.new(path, "r+")
    f.each do |line|
      line_array = line.split("\t")
    end 
      Receipt.new(line_array[0], line_array[1])
       @@receipts.each do |receipt|
      f.puts "Receipt: #{receipt.store}\t#{receipt.item}\t#{receipt.quantity}\t#{receipt.price}\t#{receipt.date}"
    end
    f.close
  end

end