class CollagesController < ApplicationController
  def index
    @collages = Collage.all
  end

  def show
    @collage = Collage.find_by(id: params[:id])
  end

  def new
    @collage = Collage.new
    # @collage.images.build

    2.times { @collage.images.build }
  end

  def create
      @collage = Collage.new(collage_params)

      if @collage.save
        redirect_to collage_path(@collage)
      else
        render :new
      end
  end
  
  def destroy
    collage = Collage.find_by(id: params[:id])
    collage.destroy
    redirect_to collages_path
  end

  private

  def collage_params
    params.require(:collage).permit(:name, :description, images_attributes: [:title, :description, :image_url])
  end
end
