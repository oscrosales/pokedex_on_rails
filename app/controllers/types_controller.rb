class TypesController < ApplicationController
  def index
    @types = Type.all
  end

  def show
    @type = Type.includes(:pokemon)
                .find_by('name = ? OR id = ?', params[:id], params[:id])
  end
end
