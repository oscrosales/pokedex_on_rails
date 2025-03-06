class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.includes(:types, :abilities, :species)
                      .find_by(id: params[:id])
  end
end
