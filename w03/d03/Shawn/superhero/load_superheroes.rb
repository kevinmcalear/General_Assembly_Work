  require 'pg'

  db_conn = PG.connect( { :dbname => "superheroes_db" } )

##load superheroes to superheroes_db##
  file = File.new("superheroes.csv", "a+")

  db_conn.exec("TRUNCATE superheroes;")

file.each do |line|
  superhero = line.split(",")
  superhero_name = superhero[0].gsub("","")
  alter_ego = superhero[1]
  has_cape = superhero[2]
  power = superhero[3]
  arch_nemesis = superhero[4]

  sql = "INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis)"
  sql += "VALUES ( '#{superhero_name}', '#{alter_ego}', '#{has_cape}', '#{power}', '#{arch_nemesis}');"
  db_conn.exec(sql)

end

file.close
db_conn.close
##