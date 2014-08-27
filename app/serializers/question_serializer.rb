class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :subject, :content, :category, :upvotes, :updated_at

  has_many :answers

  url :question  
end
