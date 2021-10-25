class UserSerializer < ActiveModel::Serializer
  attributes :username, :id, :password
end
