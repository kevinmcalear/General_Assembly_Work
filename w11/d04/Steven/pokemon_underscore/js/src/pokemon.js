var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    _.each(pokemon.pokemonList, function(monster){
      console.log(monster.name);
    });
  },

  findPokemonByName : function(name){
    return _.find(pokemon.pokemonList, function(monster){
      return monster.name == name;
    });
  },

  findStrongestPokemon : function(){
    var strongest = _.max(pokemon.pokemonList, function(monster){
      return parseInt(monster.stats.attack);
    });
    return strongest;
  },

  findPokemonByType : function(type){
    return _.filter(pokemon.pokemonList, function(monster){
      return _.contains(monster.type, type);
    });
  },

  findAllTypes : function(){
    var allTypes = _.map(pokemon.pokemonList, function(monster){
      return monster.type;
    });
    return _.uniq(_.flatten(allTypes));
  },

  totalStats : function(name){
    var singlePokeStats = this.findPokemonByName(name);
    return _.reduce(singlePokeStats.stats, function(sum, stat){
      return sum + parseInt(stat);
    }, 0);
  }
};