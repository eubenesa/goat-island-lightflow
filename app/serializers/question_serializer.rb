class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :subject, :content, :category, :upvotes, :updated_at

  belongs_to :user
  has_many :answers

  url :question  
end
