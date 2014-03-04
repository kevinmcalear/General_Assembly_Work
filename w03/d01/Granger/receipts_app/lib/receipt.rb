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
    @store
  end

  def item
    @item
  end

  def quantity
    @quantity
  end

  def price
    @price
  end

  def date
    @date
  end

  def to_s
    "#{@store} #{@item} #{@quantity} #{@price} #{@date}"
  end

  def self.clear
    @@receipts = []
  end

  def self.all
    @@receipts
  end

  def self.save_all(path)
    f = File.new(path, "a+")

    @@receipts.each do |receipt|
      f.puts "#{receipt.store}\t#{receipt.item}\t#{receipt.quantity}\t#{receipt.price}\t#{receipt.date}"
    end

    f.close
  end

  def self.read_all
    f = File.new(path, "r+")

    f.each do |line|
    line_array = line.split("\t") 
      Receipt.new(line_array[0],line_array[1],line_array[2],line_array[3],line_array[4])
    end
    f.close
  end
end