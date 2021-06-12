class PhotoSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :category, :votes, :description, :attached_image

    # def image 
        # for url on AWS
        # object.image.blob.key if object.image.attached?   
    # end

    def attached_image 
        #for url on localhost
        object.get_image_url if object.image.attached? 
    end 
end
  