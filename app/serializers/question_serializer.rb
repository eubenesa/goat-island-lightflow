class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :subject, :content, :category, :upvotes, :updated_at

  embed :ids

  has_one :user, include: true
  has_many :answers, include: true
end
