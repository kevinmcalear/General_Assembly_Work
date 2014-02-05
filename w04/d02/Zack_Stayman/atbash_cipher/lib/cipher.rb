class Cipher
  @plain = ("a".."z").to_a
  @encode = ("a".."z").to_a.reverse


  def self.encode(string)
    array = string.split("")
    array = array.map do |letter|
      index = @plain.find_index(letter)
      @encode[index]
    end
    return array.join

  end
end