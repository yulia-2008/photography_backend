class UserSerializer < ActiveModel::Serializer
  attributes attributes :id, :username, :city
end
