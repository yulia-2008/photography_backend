class Photo < ApplicationRecord
    has_one_attached :image
    belongs_to :user

    def image_url
        if image.attached?
          image.blob.service_url
        end
      end
end