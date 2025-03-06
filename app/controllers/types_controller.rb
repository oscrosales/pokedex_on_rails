class TypesController < ApplicationController
  def index
    @types = Type.all.order("name ASC")
  end

  def show
    @type = Type.includes(:pokemons)
                .find_by('name = ? OR id = ?', params[:id], params[:id])
    @pokemons = @type.pokemons
  end
end
