require 'pg'

db_conn = PG.connect(:dbname => 'superheroes_db', :host => 'localhost')

file = File.new("superheroes.csv", "a+")

file.each do |line|
  hero = line.split(",")
  superhero_name = hero[0]
  alter_ego = hero[1]
  has_cape = hero[2]
  power = hero[3]
  arch_nemesis = hero[4]

  sql = "INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis)"
  sql += "VALUES ( '#{superhero_name}', '#{alter_ego}', '#{has_cape}', '#{power}', '#{arch_nemesis}');"

  db_conn.exec(sql)

end

file.close

db_conn.close