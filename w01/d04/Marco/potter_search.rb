$accessor = File.open("potter.csv", "r")

  potter_reader = $accessor.read

  #make an array that has all character information split into separate lines

  $line_data = potter_reader.split("\n").to_s
  # $line_data.gsub!(" \"", "[")
  # $line_data.gsub!("\",", "]")
  # $line_data.gsub!("\",", "]")
  # $line_data.delete!("\"")
  # $line_data.gsub!("][", "], [")
  # $line_data.gsub!("[18956", "[[18956")
  # $line_data.gsub!("75,Grawp]", "75,Grawp]]")

  $line_data

  puts $line_data
  #define a character_info method to easily get information wanted with argument of an index from the array above

  

  def character_info(index)

      $line_data.map do |x| 
          [
          {wizzes_mugs_etc[:mentions] => x[index]},
          {wizzes_mugs_etc[:name] => x[index]},
          {wizzes_mugs_etc[:house] => x[index]} 
          ]

        # trt = $line_data[index].split(",")
        # x[index] = "#{trt}"
        
      end          
          
      

  end

  wizzes_mugs_etc = {}
    wizzes_mugs_etc[:mentions] = character_info(0)
    wizzes_mugs_etc[:name] = character_info(1)
    wizzes_mugs_etc[:house] = character_info(2)

  # wizzes_mugs_etc.each {|hash| name.push(hash[:name])}
  puts wizzes_mugs_etc
  # puts character_info (0)






  # name.each {|x| puts x}

  # wizzes_mugs_etc = []
  #   Hash.new(mentions: line_data.split(",")[1])
  #   :name
  #   house[:house]

    # char_info.each {|hash| name.push(hash[:name])}


  #   puts line_data
    # split_line = line_data.split
    # puts split_line

  # char_info.each do |mentions, value|

    # char_info[:mentions].push(line(0))
    # char_info[:name].push(line(0))
    # char_info[:house].push(line(0))
    # line = line_data
    # {mentions => line_data}

    # char_info[:characters]

  # char_info[:characters] = line_data[0].split(",")

  # end

  # puts char_info

  # char_names = characters.select {|name| !characters.include?()}

  # char_data = line_data.each { |info| puts info}

# line_data.each do |line|
  #   line_data.split(", ").to_a

  # end

  #   puts line_data

  # char_array = []

  # split_line = line_data.split(", ")

  # puts line_data

$accessor.close