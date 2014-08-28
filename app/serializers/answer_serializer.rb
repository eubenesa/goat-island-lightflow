class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :content, :upvotes, :user_id, :question_id, :updated_at
end
