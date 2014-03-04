class Converter
  def convert(hex)
    # hex.hex
    hex.to_i(16)
  end
end

# (2 × 163) + (10 × 162) + (15 × 161) + (3 × 160)