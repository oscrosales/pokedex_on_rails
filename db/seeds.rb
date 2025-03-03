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

abilities = PokeApi.get(ability: {limit: 293}).results

abilities.each do |x|
  ability = PokeApi.get(ability: x.name)
  unless ability.generation.name != "generation-iii"
    effect = ""
    ability.flavor_text_entries.each do |entry|
      effect = entry.flavor_text.squish unless entry.language.name != "en" || entry.version_group.name != "platinum"
    end

    Ability.create(
      name: ability.name.capitalize,
      effect: effect
    )

    puts "Created #{ability.name.capitalize} ability with effect: #{effect}"
  end
end