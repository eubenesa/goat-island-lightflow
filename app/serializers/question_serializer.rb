class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :subject, :content, :category, :upvotes, :updated_at

  belongs_to :user_id
  has_many :comments

  url :question  
end
