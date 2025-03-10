class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.order("id ASC")
                       .page(params[:page])
                       .per(9)
  end

  def show
    @pokemon = Pokemon.includes(:types, :abilities, :species)
                      .find_by('id = ? OR name = ?', params[:id], params[:id])
  end

  def search_results
    @query = params[:query]
    @pokemons = Pokemon.where("name LIKE ?", "%#{@query}%")
  end
end
