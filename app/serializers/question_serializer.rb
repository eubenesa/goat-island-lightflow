class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :subject, :content, :category, :upvotes, :updated_at

  embed :ids

  has_one :user
  has_many :answers
end
