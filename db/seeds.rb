require "poke-api-v2"

# types = PokeApi.get(:type).results

# types.each do |x|
#   type = PokeApi.get(type: x.name)
#   unless type.generation.name != "generation-i"
#     Type.create(
#       name: type.name.capitalize
#     )

#     puts "Created #{type.name.capitalize} type"
#   end
# end

# abilities = PokeApi.get(ability: {limit: 293}).results

# abilities.each do |x|
#   ability = PokeApi.get(ability: x.name)
#   unless ability.generation.name != "generation-iii"
#     effect = ""
#     ability.flavor_text_entries.each do |entry|
#       effect = entry.flavor_text.squish unless entry.language.name != "en" || entry.version_group.name != "platinum"
#     end

#     Ability.create(
#       name: ability.name.capitalize,
#       effect: effect
#     )

#     puts "Created #{ability.name.capitalize} ability with effect: #{effect}"
#   end
# end

# species = PokeApi.get(pokemon_species: {limit: 151}).results

# species.each do |x|
#   specie = PokeApi.get(pokemon_species: x.name)

#   flavor_text = ""
#   genus = ""

#   specie.flavor_text_entries.each do |entry|
#     flavor_text = entry.flavor_text.squish unless entry.language.name != "en" || entry.version.name != "red"
#   end

#   specie.genera.each do |gene|
#     genus = gene.genus.squish unless gene.language.name != "en"
#   end

#   Species.create(
#     name: specie.name.capitalize,
#     flavor_text: flavor_text,
#     genus: genus
#   )

#   puts "Created #{specie.name.capitalize} species."
# end

pokemons = PokeApi.get(pokemon: { limit: 151 }).results

pokemons.each do |x|
  pokemon = PokeApi.get(pokemon: x.name)
  hp = 0
  attack = 0
  defense = 0
  spatk = 0
  spdef = 0
  speed = 0

  # types = []

  # pokemon.types.each do |type|
  #   types.append(type.type.name)
  # end

  # puts pokemon.name.capitalize
  # puts "Height: #{pokemon.height}"
  # puts "Weight: #{pokemon.weight}"

  pokemon.stats.each do |stat|
    puts "#{stat.stat.name} : #{stat.base_stat}"
    # if stat.stat.
  end

  # Pokemon.create(
  #   name: pokemon.name.capitalize,
  #   height: pokemon.height,
  #   weight: pokemon.weight,
  # )
end