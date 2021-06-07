class PhotoSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :category, :votes, :description

    # def image   
    #     if object.image.attached? 
    #         object.image.blob.key
    #     else 
    #         nil
    #     
    #     end
    # end

    def attached_image 
        object.image.blob.key if object.image.attached?        
    end 
end
  