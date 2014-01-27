class Receipt
  def initialize(store, item, quantity, price, date)
   @store = store
   @item = item
   @quantity = quantity
   @price = price
   @date = date
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

  def store
    @store
  end
end