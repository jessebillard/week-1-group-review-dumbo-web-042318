require_relative "./review-question-1.rb"
require 'pry'

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 2,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]

def pokemon_iterator(array, name)

    array.each do |pokemon_hash|
        
        if pokemon_hash[:"name"] == name
            
            pokemon_hash[:"abilities"].each do |ability_array|
                ability_array[:"ability"][:"url"]
                    
                
            end 
        end 
    end

end 

pokemon_iterator(pokemon, "bulbasaur")


def base_experience(pokemon_array)
    pokemon_array.each do |pokemon_hash|
        if pokemon_hash[:"base_experience"] > 40
            return pokemon_hash[:"name"]
        end 
        
    end 
end 

base_experience(pokemon)

def all_base_experience(pokemon_array)

    pokemon_array.collect do |pokemon_hash|
        if pokemon_hash[:"base_experience"] > 40
            pokemon_hash[:"name"]
        end 
    end.compact

end 

all_base_experience(pokemon)

def all_poke_names(pokemon_array)
    pokemon_array.collect do |pokemon_hash|
        pokemon_hash[:"name"]
    end 
end 

all_poke_names(pokemon)

def over_weight_sixty(pokemon_array)

    pokemon_array.any? do |pokemon_hash|
       pokemon_hash[:"weight"] > 60
    end

end 

over_weight_sixty(pokemon)

binding.pry
1