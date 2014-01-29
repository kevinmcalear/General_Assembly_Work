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
    return @@receipts = []
  end
  def self.save_all(path)
    f = File.new(path, "w+")
      @@receipts.each do |receipt|
        f.puts "#{receipt.store}\t#{receipt.item}\t#{receipt.quantity}\t#{receipt.price}\t#{receipt.date}"
      end
    f.close
  end
  def self.read_all(path)
    f = File.new(path,"a+")

    f.each do |line|
      line_array = line.split("\t")
      Receipt.new(line_array[0],line_array[1],line_array[2],line_array[3],line_array[4])
    end

    f.close
  end

end