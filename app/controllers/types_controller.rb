class TypesController < ApplicationController
  def index
    @types = Type.all.order("name ASC")
  end

  def show
    @type = Type.find_by('name = ? OR id = ?', params[:id], params[:id])
  end
end
