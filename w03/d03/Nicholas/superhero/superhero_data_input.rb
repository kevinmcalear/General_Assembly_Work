require 'pg'


db_conn = PG.connect(:dbname => 'heroes', :host => 'localhost')

f = File.new("superheroes.csv", "a+")

f.each do |line|
  superheroes = line.split(",")
  superhero_name = superheroes[0]
  alter_ego = superheroes[1]
  has_cape = superheroes[2]
  power = superheroes[3]
  arch_nemesis = superheroes[4]

  sq_input = "INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis)"
  sq_input += "VALUES ('#{superhero_name}','#{alter_ego}','#{has_cape}','#{power}','#{arch_nemesis}');"

  db_conn.exec(sq_input)
end

f.close

db_conn.close