class UserSerializer < ActiveModel::Serializer
  attributes :id,:lastname, :firstname, :email, :username, :password, :profile_picture_url, :member
end
