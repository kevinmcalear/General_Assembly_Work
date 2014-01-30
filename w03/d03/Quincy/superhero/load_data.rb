require 'pg'

db_conn = PG.connect(:dbname => 'superhero_db', :host => 'localhost')

file = File.new("superheroes.csv", "a+")

file.each do |line|
  hero = line.split(",")
  super_name = hero[0].gsub("'","")
  real_name = hero[1]
  cape = hero[2]
  super_power = hero[3]
  arch_enemy = hero[4]

  sql = "INSERT INTO superhero (super_name, real_name, cape, super_power, arch_enemy)"
  sql += "VALUES ( '#{super_name}', '#{real_name}', '#{cape}', '#{super_power}', '#{arch_enemy}');"

  db_conn.exec(sql)

end

file.close

db_conn.close
