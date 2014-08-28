class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :subject, :content, :category, :upvotes, :user_id, :updated_at

  has_many :answers
end
