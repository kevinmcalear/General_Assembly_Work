var pokemon = {
// pokemon.pokemonList = giant json file
// pokemon.printAllPokemonNamesToConsole
//check that it prints to console
//no for loops
  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    _.each(pokemon.pokemonList, function(monster){
      console.log(monster.name);
    });  
  },

  findPokemonByName : function(name){
    return _.find(pokemon.pokemonList, function(monster) {
      return monster.name === name;  
    });
  },

  findStrongestPokemon : function(){
    return _.max(pokemon.pokemonList, function(monster){
      return parseInt(monster.stats.attack); 
    })
  },
  //multiple types
  findPokemonByType : function(type){
    return _.filter(pokemon.pokemonList, function(monster){
      return _.contains(monster.type, type)
    })

    // _.where(pokemon.pokemonList, {"type": type})
  },

  findAllTypes : function(){
    return _.uniq(_.flatten(_.map(pokemon.pokemonList, function(monster){
      return monster.type
    })))
  },

  totalStats : function(name){
    var foundPokemon = findPokemonByName(name);
    return _.reduce(foundPokemon.stats, function(sum, stat){
      return parseInt(sum) + parseInt(stat);
    }, 0);
    //grab all the sats
    //0 is memo, it's the initial state of the reduction
  }
}