class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.includes(:types, :abilities, :species)
                      .find(params[:id])
  end
end
