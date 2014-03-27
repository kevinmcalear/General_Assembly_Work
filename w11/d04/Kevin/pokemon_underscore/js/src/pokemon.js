var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
  return  _.each(pokemon.pokemonList, function(pokemon){
      console.log(pokemon.name);
    });
  },

  findPokemonByName : function(name){
   return  _.find(pokemon.pokemonList, function(pokemon){ 
      return pokemon.name === name
    });
  },

  findStrongestPokemon : function(){
   return _.max(pokemon.pokemonList, function(pokemon){ return parseInt(pokemon.stats.attack); });
  },

  findPokemonByType : function(type){
    return _.filter(pokemon.pokemonList, function(pokemon){ 
      return _.contains(pokemon.type, type);
    });
  },

  findAllTypes : function(){
    var types = _.map(pokemon.pokemonList, function(pokemon){
      return pokemon.type;
    });

    return _.uniq(_.flatten(types));
  },

  totalStats : function(name){
    var foundPokemon = pokemon.findPokemonByName(name);
    return _.reduce(foundPokemon.stats, function(sum, val){ 
      return parseInt(sum) + parseInt(val); 
    }, 0);

  }
}