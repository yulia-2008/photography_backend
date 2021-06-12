class PhotoSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :category, :votes, :description, :attached_image

    # def image   
    #     if object.image.attached? 
    #         object.image.blob.key
    #     else 
    #         nil
    #     
    #     end
    # end

    def attached_image 
        object.get_image_url if object.image.attached? 
        # if object.image.attached?
        #     true
        # else 
        #     false
        # end   
    end 
end
  