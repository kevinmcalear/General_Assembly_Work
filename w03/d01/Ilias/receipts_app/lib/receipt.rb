class Receipt

def initialize(store, item, quantity, price, date)
@store = store
@item = item
@quantity = quantity
@price = price
@date = date
end

def to_s
  return "Receipt: #{@store}, #{@item}, #{@quantity}, #{@price}, #{@date}"
end

end