require "poke-api-v2"

types = PokeApi.get(:type).results

types.each do |x|
  type = PokeApi.get(type: x.name)
  unless type.generation.name != "generation-i"
    puts type.name
  end
end