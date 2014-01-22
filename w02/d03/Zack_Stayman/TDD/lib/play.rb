def add(num1, num2)
  return num1.to_i + num2.to_i
end

def odds(array)
  return array.select do |number|
    number.odd?
  end
end