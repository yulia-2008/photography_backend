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
        @photo = Photo.create!(photo_params)
        render json: { photo: PhotoSerializer.new(@photo)}
    end

    def upload_image
         @photo = Photo.find_by(id:params[:id])
         render json: {"jjjjj": @photo}
        # @photo.image.attach(image_params[:image])
        # if @photo.image.attached?
        #   render json: { image: PhotoSerializer.new(@photo)}
        # else 
        #   render json: {errors: "No image attached"}
        # end
      end

    private
        
    def photo_params
        params.require(:photo).permit(:category, :votes, :description, :user_id)
    end

    def image_params
        params.permit(:image)
    end
    
end