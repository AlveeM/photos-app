class CollagesController < ApplicationController
  def index
    @collages = Collage.all
  end

  def show
    @collage = Collage.find_by(id: params[:id])
  end

  def new
    @collage = Collage.new
  end

  def create
  end
  
  def destroy
    collage = Collage.find_by(id: params[:id])
    collage.destroy
    redirect_to collages_path
  end
end
