require "poke-api-v2"


pokemons = PokeApi.get(pokemon: { limit: 151 }).results

pokemons.each do |x|
  pokemon = PokeApi.get(pokemon: x.name)
  hp = 0
  attack = 0
  defense = 0
  spatk = 0
  spdef = 0
  speed = 0

  pokemon.stats.each do |stat|
    if stat.stat.name === "hp"
      hp = stat.base_stat
    end

    if stat.stat.name === "attack"
      attack = stat.base_stat
    end

    if stat.stat.name === "defense"
      defense = stat.base_stat
    end

    if stat.stat.name === "special-attack"
      spatk = stat.base_stat
    end

    if stat.stat.name === "special-defense"
      spdef = stat.base_stat
    end

    if stat.stat.name === "speed"
      speed = stat.base_stat
    end
  end

  Pokemon.create(
    name: pokemon.name.capitalize,
    height: pokemon.height,
    weight: pokemon.weight,
    hp: hp,
    attack: attack,
    defense: defense,
    spatk: spatk,
    spdef: spdef,
    speed: speed
    sprite: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/#{pokemon.id}.svg"
  )

  pokemon.types.each do |type|
    t = Type.find_or_create_by(name: type.type.name.capitalize)

    if t.persisted?
      PokemonType.create(pokemon: pokemon, type: t)
    end
  end

  pokemon.abilities.each do |x|
    ability = PokeApi.get(ability: x.ability.name)

    effect = ""

    ability.flavor_text_entries.each do |entry|
      effect = entry.flavor_text.squish unless entry.language.name != "en" || entry.version_group.name != "platinum"
    end

    a = Ability.find_or_create_by(
      name: ability.name.capitalize,
      effect: effect
    )

    if a.persisted?
      PokemonAbility.create(pokemon: pokemon, ability: a)
    end
  end

  specie = PokeApi.get(pokemon_species: pokemon.name)

  flavor_text = ""
  genus = ""

  specie.flavor_text_entries.each do |entry|
    flavor_text = entry.flavor_text.squish unless entry.language.name != "en" || entry.version.name != "red"
  end

  specie.genera.each do |gene|
    genus = gene.genus.squish unless gene.language.name != "en"
  end

  new_specie = pokemon.create_species(
    name: specie.name.capitalize,
    flavor_text: flavor_text,
    genus: genus
  )
  new_specie.save

  puts "Created #{pokemon.name.capitalize} entry"
end