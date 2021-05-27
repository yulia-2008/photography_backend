class User < ApplicationRecord
    has_secure_password 
    has_many :photos

    validates :username, uniqueness: { case_sensitive: false } 
   

end
