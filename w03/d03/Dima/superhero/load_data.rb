require 'pg'
  db_conn = PG.connect(:dbname => 'superheros')

  file = File.new("superheroes.csv", "a+")
  file.each do |line|
    hero = line.split(",")
    name = hero[0]
    alter_ego = hero[1]
    has_cape = hero[2]
    power = hero[3]
    arch_nemesis = hero[4]

    insert_query = "INSERT INTO superheros "
    insert_query += "(name, alter_ego, has_cape, power, arch_nemesis)"
    insert_query += " VALUES('#{name}','#{alter_ego}','#{has_cape}','#{power}','#{arch_nemesis}');"

      db_conn.exec(insert_query)
    end
    file.close
    db_conn.close