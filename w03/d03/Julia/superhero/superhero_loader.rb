require 'pg'

superheroes_conn = PG.connect(:dbname => 'superheroes_db', :host => 'localhost')

file = File.new("superheroes.csv", "a+")

file.each do |line|
  superhero = line.split(",")
  superhero_name = superhero[0].gsub("'","")
  alter_ego = superhero[1]
  has_cape = superhero[2]
  power = superhero[3]
  arch_nemesis = superhero[4]

  sql = "INSERT INTO players (superhero_name, alter_ego, has_cape, power, arch_nemesis)"
  sql += "VALUES ( '#{superhero_name}', '#{alter_ego}', '#{has_cape}', '#{power}', '#{arch_nemesis}');"

 superheroes_conn.exec(sql)

end

file.close

superheroes_conn.close