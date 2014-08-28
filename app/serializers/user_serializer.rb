class UserSerializer < ActiveModel::Serializer
  attributes :id, :github_username

  has_many :questions
  has_many :answers
end
