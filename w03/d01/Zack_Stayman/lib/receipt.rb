class Receipt

  def initialize(store, item, quantity, price, date)
    @store = store
    @item = item
    @quantity = quantity
    @price = price
    @date = date
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

end