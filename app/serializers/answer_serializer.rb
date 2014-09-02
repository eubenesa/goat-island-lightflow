class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :content, :upvotes, :updated_at, :question_id, :user_id
end
