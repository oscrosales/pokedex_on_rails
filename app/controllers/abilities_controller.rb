class AbilitiesController < ApplicationController
  def index
    @abilities = Ability.all.order("name ASC")
  end

  def show
    @ability = Ability.includes(:pokemons)
                      .find_by('name = ? OR id = ?', params[:id], params[:id])
    @pokemons = @ability.pokemons
  end
end
