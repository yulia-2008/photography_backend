class Photo < ApplicationRecord
    include Rails.application.routes.url_helpers
    has_one_attached :image
    belongs_to :user

    def image_url
      image.blob.service_url
      #url on AWS
    end

    def get_image_url
      url_for(self.image)
      # url on localhost
      # don't forget to include host link to every file in config/environments
      # Rails.application.routes.default_url_options = {host: "http://192.168.1.145:3000"}
    end
end