require 'pg'

db_conn = PG.connect(:dbname => 'superhero_db', :host => 'localhost')

file = File.new("superheroes.csv", "a+")

file.each do |line|
  player = line.split(",")
  superhero_name = player[0].gsub("'","")
  alter_ego = player[1]
  has_cape = player[2]
  power = player[3]
  arch_nemesis = player[4]

  sql = "INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis)"
  sql += "VALUES ( '#{superhero_name}', '#{alter_ego}', '#{has_cape}', '#{power}', '#{arch_nemesis}');"

  db_conn.exec(sql)

end

file.close

db_conn.close