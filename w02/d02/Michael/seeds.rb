require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'

$happitails = Shelter.new("Happitails")
$happitails.create_animals_array(
    :name=>"Rover", :species=>"Beagle", :toy=>["ball"]
    )
$happitails.create_animals_array(
    :name=>"Pookie", :species=>"Retriever", :toy=>["ball, bone"]
    )
$happitails.create_animals_array(
    :name=>"Buster", :species=>"Cocker Spaniel", :toy=>["ball"]
    )
$happitails.create_clients_array(
    :name=>"Tom", :age=>20, :animals=>[]
    )
$happitails.create_clients_array(
    :name=>"John", 
    :age=>25, 
    :animals=>[
      {:name=>"Rex", :species=>"Labrador", :toy=>["ball, bone"]},
      {:name=>"Rover", :species=>"Collie"}]
    )
$happitails.create_clients_array(
    :name=>"Agnes", 
    :age=>50, 
    :cats=>[
      {:name=>"Snowball I", :species=>"Calico", :toy=>["ball, bone"]},
      {:name=>"Snowball II", :species=>"Calico"},
      {:name=>"Snowball III", :species=>"Calico"},
      {:name=>"Snowball IV", :species=>"Calico"},
      {:name=>"Snowball V", :species=>"Calico"},
    ]
    )





$furryfriends = Shelter.new("FurryFriends")

