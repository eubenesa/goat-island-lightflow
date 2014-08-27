class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :content, :upvotes, :updated_at

  belongs_to :user_id
  belongs_to :question_id

  url [:question, :answer]
end
