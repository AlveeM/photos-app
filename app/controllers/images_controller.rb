class ImagesController < ApplicationController
  before_action :redirect_if_not_signed_in, only: [:new, :create, :edit, :update]

  def index
    @images = Image.all
  end

  def show
    @image = Image.find_by(id: params[:id])
  end

  def most_recent
    @images = Image.most_recent
  end

  def new
    @image = Image.new
    @image.build_collage
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      redirect_to image_path(@image)
    else
      render :new
    end
  end

  def edit
    @image = Image.find_by(id: params[:id])
  end

  def update
    @image = Image.find_by(id: params[:id])
    @image.update(image_params)

    if @image.valid?
      redirect_to image_path(@image)
    else
      render :edit
    end
  end

  def destroy
    image = Image.find_by(id: params[:id])
    image.destroy
    redirect_to images_path
  end

  private

  def image_params
    params.require(:image).permit(:title, :description, :image_url, :collage_id, collage_attributes: [:name, :description])
  end
end
