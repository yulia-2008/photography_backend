class PhotosController < ApplicationController
    skip_before_action :authorized
    
    def index
        @photos = Photo.all
        render json: @photos
    end

    def show 
      @photo = Photo.find_by(id:params[:id])
      render json: {photo: PhotoSerializer.new(@photo)} 
    end

    def create
      img_params = params[:image]
      params = photo_params.except(:image)
      @photo = Photo.create!(params)
      @photo.image.attach(img_params)
        if @photo.image.attached?
          render json: { photo: "attached"}
        else 
          render json: {errors: "No image attached"}
        end     
    end

    private
        
    def photo_params
        params.require(:photo).permit(:category, :votes, :description, :user_id, :image)
    end

    def image_params
        params.permit(:image)
    end
    
end