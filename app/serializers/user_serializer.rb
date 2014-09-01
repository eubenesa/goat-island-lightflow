class UserSerializer < ActiveModel::Serializer
  attributes :id, :github_username
end
