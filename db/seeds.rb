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

abilities = PokeApi.get(:ability)

puts abilities.inspect