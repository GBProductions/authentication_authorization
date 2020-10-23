class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render :index
  end

  def new
    @photos = Photo.new
    render :new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photos_path
    else
      render :new
    end

  private
    def photo_params
      params.require(:photo).permit(:name, :year)
    end
  end

  def edit
    @photo = Photo.find(params[:id])
    render :edit
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def update
    @photo= Photo.find(params[:id])
    if @photo.update(photo_params)
      redirect_to photos_path
    else
      render :edit
    end
  end

  def destroy
    @photo = Photo.find(params[id])
    @photo.destroy
    redirect_to_photos_path
  end
end

