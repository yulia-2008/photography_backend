class PhotoSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :category, :votes,  :attached_image, :created_at

    def attached_image 
        # for url on AWS
        # object.image.blob.key if object.image.attached?  
        object.image_url if object.image.attached?   
    end

    #def attached_image 
        #for url on localhost
        #object.get_image_url if object.image.attached? 
    #end 
end
  